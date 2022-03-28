import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/logged_in_screens/home_screen/humidity_screen/humidity_screen.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/logged_in_screens/home_screen/temperature_screen/temperature_screen.dart';

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
            title: '31c',
            icon: Icons.thermostat,
            color: Colors.red,
            onTapItem: () {
              RoutesHelper.pushScreen(context, const TemperatureScreen());
            },
          ),
          const Spacer(),
          _buildCard(
            title: '70%',
            icon: Icons.opacity,
            color: Colors.blue,
            onTapItem: () {
              RoutesHelper.pushScreen(context, const HumidityScreen());
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildCard({
    String? title,
    IconData? icon,
    Color? color,
    Function()? onTapItem,
  }) {
    return InkWell(
      onTap: onTapItem,
      child: SizedBox(
        height: 80,
        child: Card(
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Icon(icon ?? Icons.home, size: 45, color: color ?? Colors.black),
              const SizedBox(width: 20),
              Text(
                title ?? 'Card',
                style: const TextStyle(fontSize: 20),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_rounded,
                  size: 30, color: Colors.black),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
