import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'screens/screen_0.dart';
import 'screens/screen_1.dart';
import 'dart:convert';

Future<void> main() async {
  // Connect to MQTT broker
  MqttClient client = await connect();

  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final MqttClient client;

  const MyApp({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Screen0(),
        '/screen1': (context) => Screen1(client: client),
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
      .startClean()
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

  return client;
}

void onConnected() {
  print('Connected');
}

void onDisconnected() {
  print('Disconnected');
}

void onSubscribed(String topic) {
  print('Subscribed topic: $topic');
}

void onSubscribeFail(String topic) {
  print('Failed to subscribe $topic');
}

void onUnsubscribed(String? topic) {
  print('Unsubscribed topic: $topic');
}

void pong() {
  print('Ping response client callback invoked');
}
