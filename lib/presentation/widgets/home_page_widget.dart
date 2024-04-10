import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class HomePageWidget extends HookWidget {
  final String title;
  final IconData icon;
  final int deviceNum;

  const HomePageWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.deviceNum,
  });

  @override
  Widget build(BuildContext context) {
    final isOn = useState(false);

    void toggleSwitch(bool value) {
      isOn.value = !isOn.value;
    }

    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: isOn.value ? SHColors.black : SHColors.lightGrey,
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
                  color: isOn.value ? SHColors.white : SHColors.darkGrey,
                ),
                child: Icon(
                  icon,
                  size: 25,
                  color: isOn.value ? SHColors.black : SHColors.lightGrey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isOn.value ? SHColors.white : SHColors.darkGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                deviceNum > 1 ? "$deviceNum devices" : "$deviceNum device",
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
                isOn.value ? "On" : "Off",
                style: TextStyle(
                  color: isOn.value ? SHColors.white : SHColors.darkGrey,
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
                  value: isOn.value,
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
