import 'package:flutter/material.dart';

class PlantSensorComp extends StatelessWidget {
  String sensorName;
  String sensorIcon;
  String sensorValue;

  PlantSensorComp({
    required this.sensorName,
    required this.sensorIcon,
    required this.sensorValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.blueGrey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(sensorName),
                Image.asset(sensorIcon),
              ],
            ),
            Text(sensorValue),
            Text('Status'),
          ],
        ),
      ),
    );
  }
}
