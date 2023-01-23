import 'package:flutter/material.dart';

class PlantSensorComp extends StatelessWidget {
  const PlantSensorComp({super.key});

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
                Text('PH'),
                Icon(Icons.grid_3x3),
              ],
            ),
            Text('Value'),
            Text('Status'),
          ],
        ),
      ),
    );
  }
}
