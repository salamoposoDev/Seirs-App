import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SensorDc extends StatelessWidget {
  final String namaSensor;
  final String iconSensor;
  final String dataSensor;
  const SensorDc({
    required this.namaSensor,
    required this.iconSensor,
    required this.dataSensor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 156, 177, 158),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0, top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Sensor Name and sensor Icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      namaSensor,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Image.asset(
                      iconSensor,
                      height: 30,
                    ),
                  ],
                ),
              ),
              // SENSOR VALUE
              Text(
                dataSensor,
                style: GoogleFonts.bebasNeue(fontSize: 30),
              ),
              // SENSOR STATUS
              const Text('Normal'),
            ],
          ),
        ),
      ),
    );
  }
}
