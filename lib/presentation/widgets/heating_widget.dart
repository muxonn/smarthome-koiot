import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class HeatingWidget extends HookWidget {
  final double sliderMin = 0.0;
  final double sliderMax = 100.0;

  const HeatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useState<double>(0);
    final isOn = useState(false);

    void setSlider(double value) {
      isOn.value ? state.value = value : state.value = 0;
    }

    void toggleSwitch(bool value) {
      isOn.value = !isOn.value;
      state.value = 0;
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: isOn.value ? SHColors.black : SHColors.lightGrey,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isOn.value ? SHColors.white : SHColors.darkGrey,
                ),
                child: Icon(
                  Icons.whatshot,
                  color: isOn.value ? SHColors.black : SHColors.lightGrey,
                  size: 30.0,
                ),
              ),
              Text(
                "heating",
                style: TextStyle(
                  color: isOn.value ? SHColors.white : SHColors.darkGrey,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                value: isOn.value,
                onChanged: toggleSwitch,
                inactiveThumbColor: SHColors.white,
                inactiveTrackColor: SHColors.lightGrey,
                activeTrackColor: SHColors.white,
                activeColor: SHColors.black,
              ),
            ]),
            const Spacer(),
            Row(              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              Text(
                  "${state.value.toInt()}",
                  style: TextStyle(
                    color: isOn.value ? SHColors.white : SHColors.darkGrey,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]

                
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 7,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 12),
                    ),
                    child: SizedBox(
                        width: 350, // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                        child: Slider(
                            min: sliderMin,
                            max: sliderMax,
                            activeColor: SHColors.white,
                            thumbColor: SHColors.white,
                            inactiveColor: SHColors.darkGrey,
                            value: state.value,
                            onChanged: setSlider)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
