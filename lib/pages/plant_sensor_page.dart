import 'package:flutter/material.dart';
import 'package:seirs_app/util/sensor_plant.dart';

class PlantSensors extends StatefulWidget {
  const PlantSensors({super.key});

  @override
  State<PlantSensors> createState() => _PlantSensorsState();
}

class _PlantSensorsState extends State<PlantSensors> {
  @override
  Widget build(BuildContext context) {
    return PlantSensorComp();
  }
}
