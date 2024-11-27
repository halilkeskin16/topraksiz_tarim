import 'package:flutter/material.dart';
import 'package:topraksiz_tarim/ControlCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFanOn = false; // Fan durumu
  bool isLightOn = false; // Işık durumu
  double temperature = 25.0; // Sıcaklık değeri
  double humidity = 50.0; // Nem değeri
  String airQualityText = "Orta"; // Hava kalitesi değeri
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor, // Dinamik arka plan
      appBar: AppBar(
        title: const Text('Topraksız Tarım Kontrol Paneli'),
        backgroundColor: theme.primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              color: theme.cardColor, // Dinamik kart rengi
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kontrol Panelinde Ne Yapabilirsin?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Sera kontrol paneli, bitki yetiştirme sürecini optimize etmek için sıcaklık, "
                  "nem, ışık ve sulama sistemlerini izleme ve kontrol etme imkanı sunar. Ayrıca "
                  "sensör verilerini görüntüleyerek çevresel koşulları yönetebilirsiniz.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.height / 6,
                  child: ControlCard(
                    icon: Icons.lightbulb,
                    title: 'Işık',
                    hasSwitchLigth: true,
                    switchValueLigth: isLightOn,
                    onSwitchChanged: (value) {
                      setState(() {
                        isLightOn = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.height / 6,
                  child: ControlCard(
                    icon: Icons.air,
                    title: 'Fan',
                    hasSwitchFan: true,
                    switchValueFan: isFanOn,
                    onSwitchChanged: (value) {
                      setState(() {
                        isFanOn = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 6,
            child: Card(
              // Dinamik kart rengi
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.thermostat,
                      size: MediaQuery.of(context).size.width / 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sıcaklık: ${temperature.toStringAsFixed(1)} °C"),
                      ],
                    ),
                    Slider(
                      value: temperature,
                      min: 0,
                      max: 50,
                      divisions: 50,
                      onChanged: (double value) {
                        setState(() {
                          temperature = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 6,
                child: ControlCard(
                  icon: Icons.cloud,
                  title: 'Hava Kalitesi',
                  airQualityText: airQualityText,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 6,
                child: ControlCard(
                  icon: Icons.water_drop,
                  title: 'Nem',
                  humidityText: '% ${humidity.toStringAsFixed(1)}',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
