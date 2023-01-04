import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:seirs_app/util/DC_power_comp.dart';

class TabBarDc extends StatefulWidget {
  const TabBarDc({super.key});

  @override
  State<TabBarDc> createState() => _TabBarDcState();
}

final List sensorDc = [
  // [Sensor, icon]
  ['Volt', 'lib/images/flash.png'],
  ['Arus', 'lib/images/flash.png'],
  ['Daya', 'lib/images/flash.png'],
  ['Vpanel', 'lib/images/flash.png'],
  ['I panel', 'lib/images/flash.png'],
];

class _TabBarDcState extends State<TabBarDc> {
  // ignore: non_constant_identifier_names
  final dcPower_ref = FirebaseDatabase.instance.ref('Power');
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: dcPower_ref.onValue,
      builder: (context, snap) {
        if (snap.hasData &&
            !snap.hasError &&
            snap.data?.snapshot.value != null) {
          Map<dynamic, dynamic> dataSensor =
              snap.data!.snapshot.value as dynamic;
          List<dynamic> list = [];
          list.clear();
          list = dataSensor.values.toList();

          // SENSOR VALUE FROM DATABASE
          List<String> sensorDcValues = [
            '${list[9]} V', // VOLT
            '${list[9]} V', // VOLT
            '${list[9]} V', // VOLT
            '${list[9]} V', // VOLT
            '${list[9]} V', // VOLT
          ];
          return GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: sensorDc.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (contex, index) {
                return SensorDc(
                  namaSensor: sensorDc[index][0],
                  iconSensor: sensorDc[index][1],
                  dataSensor: sensorDcValues[index],
                );
              });
        } else {
          return GridView.builder(
            itemCount: sensorDc.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return SensorDc(
                namaSensor: sensorDc[index][0],
                iconSensor: sensorDc[index][1],
                dataSensor: 'null',
              );
            },
          );
        }
      },
    );
  }
}
