import 'package:flutter/material.dart';

class ControlCard extends StatelessWidget {
  final IconData icon; // İkon
  final String title; // Başlık
  final bool hasSwitchLigth;
  final bool hasSwitchFan; // Switch kontrolü var mı?
  final bool switchValueLigth;
  final bool switchValueFan; // Switch'in değeri // Switch'in değeri
  final Function(bool)? onSwitchChanged; // Switch değişim işlevi
  final double? sliderValue; // Slider değeri // Slider değişim işlevi
  final String? subtitle;
  final String? humidityText; 
  final String? airQualityText;// Alt başlık (opsiyonel)

  const ControlCard({
    Key? key,
    required this.icon,
    required this.title,
    this.hasSwitchFan = false,
    this.hasSwitchLigth = false,
    this.switchValueLigth = false,
    this.switchValueFan = false,
    this.onSwitchChanged,
    this.sliderValue,
    this.subtitle,
    this.humidityText = "",
    this.airQualityText = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Yuvarlak köşeler
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: screenWidth / 10,

            color: (hasSwitchLigth && switchValueLigth) ? Colors.yellow : (hasSwitchFan && switchValueFan) ? Colors.blue : Colors.grey,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(
              subtitle!,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
          if (hasSwitchLigth)
            Switch(
              activeColor: Color(0xFF47663B),
              value: switchValueLigth,
              onChanged: onSwitchChanged,
            ),
          if (hasSwitchFan)
            Switch(
              activeColor: Color(0xFF47663B),
              value: switchValueFan,
              onChanged: onSwitchChanged,
            ),
            if (humidityText != "")
            Text(
              humidityText!,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            if (airQualityText != "")
            Text(
              airQualityText!,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}