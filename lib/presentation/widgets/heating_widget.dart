import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class HeatingWidget extends HookWidget {
  const HeatingWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final state = useState<double>(50);
    void setSlider(double value){
      state.value = value;
    }
    
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: SHColors.black,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 7,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
                    
                  ),
                  child: SizedBox(
                    width: 350, // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                    child: Slider(
                      min: 0.0,
                      max: 100.0,
                      activeColor: SHColors.white,
                      thumbColor: SHColors.white,
                      inactiveColor: SHColors.darkGrey,
                      value: state.value,
                      onChanged: setSlider
                    )
                  )
                )                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
