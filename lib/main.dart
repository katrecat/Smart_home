import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'screens/screen_0.dart';
import 'screens/screen_1.dart';

Future<void> main() async {
  // Connect to MQTT broker
  MqttClient client = await connect();

  // Subscribe to a topic
  await subscribeToTopic(client, 'czujniki');

  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final MqttClient client;

  const MyApp({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define your initial route
      initialRoute: '/',
      routes: {
        // Define your routes
        '/': (context) => Screen0(), // Screen0 should be the name of your Screen0 widget class
        '/screen1': (context) => Screen1(), // Add route for Screen1
        // Add more routes if needed
      },
    );
  }
}

Future<MqttClient> connect() async {
  MqttServerClient client =
  MqttServerClient.withPort('broker.emqx.io', 'flutter_client', 1883);
  client.logging(on: true);
  client.keepAlivePeriod = 60;
  client.onConnected = onConnected;
  client.onDisconnected = onDisconnected;
  client.onUnsubscribed = onUnsubscribed;
  client.onSubscribed = onSubscribed;
  client.onSubscribeFail = onSubscribeFail;
  client.pongCallback = pong;

  final connMess = MqttConnectMessage()
      .withClientIdentifier('MyApp')
      .withWillTopic('czujniki')
      .withWillMessage('My Will message')
      .startClean() // Non persistent session for testing
      .withWillQos(MqttQos.atLeastOnce);
  client.connectionMessage = connMess;

  try {
    print('Connecting');
    await client.connect();
  } catch (e) {
    print('Exception: $e');
    client.disconnect();
    return client;
  }
  print("connected");

  client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
    final recMessage = c![0].payload as MqttPublishMessage;
    final payload = MqttPublishPayload.bytesToStringAsString(recMessage.payload.message);

    print('Received message:$payload from topic: ${c[0].topic}');
  });

  return client;
}

// Connected callback
void onConnected() {
  print('Connected');
}

// Disconnected callback
void onDisconnected() {
  print('Disconnected');
}

// Subscribed callback
void onSubscribed(String topic) {
  print('Subscribed topic: $topic');
}

// Subscribed failed callback
void onSubscribeFail(String topic) {
  print('Failed to subscribe $topic');
}

// Unsubscribed callback
void onUnsubscribed(String? topic) {
  print('Unsubscribed topic: $topic');
}

// Ping callback
void pong() {
  print('Ping response client callback invoked');
}

Future<void> subscribeToTopic(MqttClient client, String topic) async {
  if (client.connectionStatus?.state == MqttConnectionState.connected) {
    client.subscribe(topic, MqttQos.atMostOnce);
  } else {
    print('Client not connected');
  }
}
