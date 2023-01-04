import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PowerSensors extends StatelessWidget {
  final String namaSensor;
  final String iconSensor;
  final String nilaiSensor;
  final String statusSensor;

  const PowerSensors({
    super.key,
    required this.namaSensor,
    required this.iconSensor,
    required this.nilaiSensor,
    required this.statusSensor,
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
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NAMA DAN ICON SENSOR
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // NAMA SENSOR
                      Text(
                        namaSensor,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // ICON SENSOR
                      Image.asset(
                        iconSensor,
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),

              // NILAI SENSOR
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  nilaiSensor,
                  style: GoogleFonts.bebasNeue(fontSize: 26),
                ),
              ),
              const SizedBox(height: 20),
              Text(statusSensor),
            ],
          ),
        ),
      ),
    );
  }
}
