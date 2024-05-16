import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum BlockType { Lightning, Speaker, Fan }

class CustomSensorBlock extends StatefulWidget {
  final BlockType blockType;

  CustomSensorBlock({required this.blockType});

  @override
  _CustomSensorBlockState createState() => _CustomSensorBlockState();
}

class _CustomSensorBlockState extends State<CustomSensorBlock> {
  bool _isSwitched = false;

  IconData getIconForBlockType(BlockType type) {
    switch (type) {
      case BlockType.Lightning:
        return FontAwesomeIcons.solidLightbulb;
      case BlockType.Speaker:
        return Icons.volume_up; //speaker
      case BlockType.Fan:
        return FontAwesomeIcons.fan;
    }
  }

  String getTextForBlockType(BlockType type) {
    switch (type) {
      case BlockType.Lightning:
        return "Lightning";
      case BlockType.Speaker:
        return "Speaker";
      case BlockType.Fan:
        return "Cooling";
    }
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
          Positioned(
            bottom: 20,
            right: 25,
            child: Row(
              children: [
                Text(
                  _isSwitched ? "On" : "Off",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(
                  width: 60,
                  height: 30,
                  child: Switch(
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
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
