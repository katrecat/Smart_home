import 'dart:convert'; // Add this import
import 'package:flutter/cupertino.dart';
import 'package:typed_data/typed_buffers.dart'; // Add this import
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mqtt_client/mqtt_client.dart';

enum BlockType { Lightning, Alarm, Fan }

enum LightningMode { Off, On, Auto }
enum AlarmMode { Off, On, Auto }

class CustomSensorBlock extends StatefulWidget {
  final BlockType blockType;
  final String sensorName;
  final MqttClient client;

  CustomSensorBlock({required this.blockType, required this.sensorName, required this.client});

  @override
  _CustomSensorBlockState createState() => _CustomSensorBlockState();
}

class _CustomSensorBlockState extends State<CustomSensorBlock> {
  bool _isSwitched = false;
  LightningMode _lightningMode = LightningMode.Off;
  AlarmMode _alarmMode = AlarmMode.Off;

  IconData getIconForBlockType(BlockType type) {
    switch (type) {
      case BlockType.Lightning:
        return FontAwesomeIcons.solidLightbulb;
      case BlockType.Alarm:
        return Icons.volume_up;
      case BlockType.Fan:
        return FontAwesomeIcons.fan;
    }
  }

  String getTextForBlockType(BlockType type) {
    switch (type) {
      case BlockType.Lightning:
        return "Lightning";
      case BlockType.Alarm:
        return "Alarm";
      case BlockType.Fan:
        return "Cooling";
    }
  }

  String getLightningModeText(LightningMode mode) {
    switch (mode) {
      case LightningMode.Off:
        return "Off";
      case LightningMode.On:
        return "On";
      case LightningMode.Auto:
        return "Auto";
    }
  }

  String getAlarmModeText(AlarmMode mode) {
    switch (mode) {
      case AlarmMode.Off:
        return "Off";
      case AlarmMode.On:
        return "On";
      case AlarmMode.Auto:
        return "Auto";
    }
  }

  void _publishState() {
    final message = jsonEncode({
      'sensorName': widget.sensorName,
      'state': widget.blockType == BlockType.Lightning ? _lightningMode.index : (widget.blockType == BlockType.Alarm ? _alarmMode.index : (_isSwitched ? 1 : 0)),
    });
    final Uint8Buffer buffer = Uint8Buffer()..addAll(message.codeUnits);
    widget.client.publishMessage('czujniki', MqttQos.atMostOnce, buffer);
    print('Published: $message to topic: sensor_state');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 200,
      margin: EdgeInsets.only(bottom: 5, top: 5, left: 6, right: 6),
      decoration: BoxDecoration(
        color: Color(0xFFededed),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 25,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFDADADA),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: FaIcon(
                  getIconForBlockType(widget.blockType),
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 30,
            child: Text(
              getTextForBlockType(widget.blockType),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 140, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.blockType != BlockType.Lightning && widget.blockType != BlockType.Alarm)
                  Text(
                    _isSwitched ? "On" : "Off",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.blockType != BlockType.Lightning && widget.blockType != BlockType.Alarm) SizedBox(width: 30),
                widget.blockType == BlockType.Lightning
                    ? Container(
                  width: 120,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<LightningMode>(
                      dropdownColor: Colors.grey[800],
                      value: _lightningMode,
                      items: LightningMode.values.map((LightningMode mode) {
                        return DropdownMenuItem<LightningMode>(
                          value: mode,
                          child: Text(
                            getLightningModeText(mode),
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      onChanged: (LightningMode? newMode) {
                        setState(() {
                          _lightningMode = newMode!;
                          _publishState();
                        });
                      },
                    ),
                  ),
                )
                    : widget.blockType == BlockType.Alarm
                    ? Container(
                  width: 120,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<AlarmMode>(
                      dropdownColor: Colors.grey[800],
                      value: _alarmMode,
                      items: AlarmMode.values.map((AlarmMode mode) {
                        return DropdownMenuItem<AlarmMode>(
                          value: mode,
                          child: Text(
                            getAlarmModeText(mode),
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      onChanged: (AlarmMode? newMode) {
                        setState(() {
                          _alarmMode = newMode!;
                          _publishState();
                        });
                      },
                    ),
                  ),
                )
                    : SizedBox(
                  width: 60,
                  height: 30,
                  child: Switch(
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                        _publishState();
                      });
                    },
                    activeColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
