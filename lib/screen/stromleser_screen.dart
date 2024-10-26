import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeviceScreen extends StatelessWidget {
  const DeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Image.asset(
                'assets/image/stromleser.png',
                height: 180,
              ),
            ),
            const SizedBox(height: 20),
            const OutputLabel(),
            const SizedBox(height: 25),
            const PowerAndTimerButtons(),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 25),
            const EnergySection(),
          ],
        ),
      ),
    );
  }
}

// Custom AppBar with reusable widgets
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF1C1C1C),
      elevation: 0,
      toolbarHeight: 100,
      leading: IconButton(
        icon: const Icon(CupertinoIcons.back),
        onPressed: () {},
      ),
      title: const Text(
        "MoeCellNicco",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButtonRow(),
              SizedBox(height: 4),
              IconActionButton(icon: Icons.settings),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

// A row with the Share and More icons
class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.share, size: 20, color: Colors.black),
          SizedBox(width: 5),
          Icon(Icons.more_vert, size: 20, color: Colors.black),
        ],
      ),
    );
  }
}

// Icon button with custom styling
class IconActionButton extends StatelessWidget {
  final IconData icon;

  const IconActionButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: () {},
        iconSize: 24,
        padding: EdgeInsets.zero,
      ),
    );
  }
}

// Widget for the output label section
class OutputLabel extends StatelessWidget {
  const OutputLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          SizedBox(height: 5),
          Center(
            child: Text("Ausgang", style: TextStyle(fontSize: 16, color: Colors.white54)),
          ),
          Text("--", style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}

// Row for the Power and Timer buttons
class PowerAndTimerButtons extends StatelessWidget {
  const PowerAndTimerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        CircularButton(icon: Icons.power_settings_new),
        CircularButton(icon: FontAwesomeIcons.clock),
      ],
    );
  }
}

// Reusable circular button widget for power/timer icons
class CircularButton extends StatelessWidget {
  final IconData icon;

  const CircularButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        icon: Icon(icon, size: 40, color: Colors.white54),
        onPressed: () {},
      ),
    );
  }
}

// Energy section widget with date and consumption display
class EnergySection extends StatelessWidget {
  const EnergySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Energy",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C2C),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                children:  [
                  Icon(CupertinoIcons.calendar_today, color: Colors.white54, size: 16),
                  SizedBox(width: 4),
                  Text('2024-10-25', style: TextStyle(color: Colors.white54, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Consumption",
          style: TextStyle(fontSize: 16, color: Colors.white54),
        ),
        const Text(
          "0",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
