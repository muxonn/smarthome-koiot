import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class HomePageWidget extends StatefulWidget {
  final String title;
  final IconData device;
  final int deviceNum;

  const HomePageWidget(
      {super.key,
      required this.title,
      required this.device,
      required this.deviceNum});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool isOn = false;

  void toggleSwitch(bool value) {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      height: 163,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: isOn ? SHColors.black : SHColors.lightGrey,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isOn ? SHColors.white : SHColors.darkGrey,
                ),
                child: Icon(
                  widget.device,
                  size: 25,
                  color: isOn ? SHColors.black : SHColors.lightGrey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: isOn ? SHColors.white : SHColors.darkGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.deviceNum > 1
                    ? "${widget.deviceNum} devices"
                    : "${widget.deviceNum} device",
                style: TextStyle(
                  color: SHColors.darkGrey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                isOn ? "On" : "Off",
                style: TextStyle(
                  color: isOn ? SHColors.white : SHColors.darkGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Theme(
                data: ThemeData(
                  useMaterial3: true,
                ).copyWith(
                  colorScheme: Theme.of(context).colorScheme.copyWith(outline: SHColors.white),
                ),
                child: Switch(
                  value: isOn,
                  onChanged: toggleSwitch,
                  activeColor: SHColors.white,
                  inactiveThumbColor: SHColors.white,
                  inactiveTrackColor: SHColors.lightGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}