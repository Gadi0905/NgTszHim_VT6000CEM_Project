import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          _buildCard(
            title: 'Temperature',
            icon: Icons.opacity,
            color: Colors.blue,
            onTapItem: () {
              if (kDebugMode) {
                print('Temperature');
              }
            },
          ),
          const Spacer(),
          _buildCard(
            title: 'Humidity',
            icon: Icons.thermostat,
            color: Colors.red,
            onTapItem: () {
              if (kDebugMode) {
                print('Humidity');
              }
            },
          ),
          const Spacer(),
          _buildCard(
            title: 'Sunlight',
            icon: Icons.wb_sunny_rounded,
            color: Colors.orange,
            onTapItem: () {
              if (kDebugMode) {
                print('Sunlight');
              }
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildCard(
      {String? title, IconData? icon, Color? color, Function()? onTapItem}) {
    return InkWell(
      onTap: onTapItem,
      child: SizedBox(
        height: 80,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Icon(
                icon ?? Icons.home,
                size: 45,
                color: color ?? Colors.black,
              ),
              const SizedBox(width: 20),
              Text(title ?? 'Card'),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
