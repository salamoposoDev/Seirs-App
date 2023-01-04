import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:seirs_app/util/AC_power_sensor_comp.dart';

class TabBarAc extends StatefulWidget {
  const TabBarAc({super.key});

  @override
  State<TabBarAc> createState() => _TabBarAcState();
}

final List myPowerSensors = [
  ['Arus', 'lib/images/arus.png', 'normal'],
  ['Daya', 'lib/images/220v.png', 'normal'],
  ['Energi', 'lib/images/daya.png', 'normal'],
  ['Freq', 'lib/images/tegangan.png', 'normal'],
  ['Cosphi', 'lib/images/flash.png', 'normal'],
];

class _TabBarAcState extends State<TabBarAc> {
  // ignore: non_constant_identifier_names
  var ref_volt = FirebaseDatabase.instance.ref('Power');

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ref_volt.onValue,
      builder: (context, snap) {
        if (snap.hasData &&
            !snap.hasError &&
            snap.data?.snapshot.value != null) {
          Map<dynamic, dynamic> dataku = snap.data!.snapshot.value as dynamic;
          List<dynamic> list = [];
          list.clear;
          list = dataku.values.toList();

          List<String> sensorPower = [
            '${list[0]} A', // ARUS
            '${list[1]} W', // DAYA
            '${list[2]} kWh', // ENERGI
            '${list[3]} Hz', // FREQ
            '${list[5]} Phi', // COSPI
          ];
          // String dataku = snap.data!.snapshot.value.toString();
          // Object? dataku = snap.data!.snapshot.value;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: myPowerSensors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return PowerSensors(
                  namaSensor: myPowerSensors[index][0],
                  iconSensor: myPowerSensors[index][1],
                  statusSensor: myPowerSensors[index][2],
                  nilaiSensor: sensorPower[index],
                );
              },
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: myPowerSensors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return PowerSensors(
                  namaSensor: myPowerSensors[index][0],
                  iconSensor: myPowerSensors[index][1],
                  statusSensor: myPowerSensors[index][2],
                  nilaiSensor: 'null',
                );
              },
            ),
          );
        }
      },
    );
  }
}
