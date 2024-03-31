import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class EnergyUsageWidget extends StatelessWidget {
  final double energyUsage;
  const EnergyUsageWidget({super.key, required this.energyUsage});

  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 8,
          shadowColor: SHColors.black,
          color: SHColors.black,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        margin: const EdgeInsets.all(15),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Energy usage", style: Theme.of(context).textTheme.titleMedium,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(energyUsage.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      color: SHColors.orange,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    const SizedBox(width: 8,),
                    Text("KWh",
                    style: TextStyle(
                      fontSize: 15,
                      color: SHColors.white,
                      fontWeight: FontWeight.normal
                    ),
                    )
                  ],
                ),
                Text("5% more then last week", style: TextStyle(fontSize: 10, color: SHColors.lightGrey))
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 30, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Icon(Icons.bolt_sharp, color: SHColors.white, size: 50,),
                    const SizedBox(height: 5,),
                    ElevatedButton(
                      onPressed: (){
                        //Feature: Deteails Energy usage page
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: SHColors.white,
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      foregroundColor: SHColors.black,
                    ),
                     child: Center(
                      child:Text("View details", style: TextStyle(color: SHColors.black, fontSize: 15, fontWeight: FontWeight.bold))
                      )
                     )
                ],
                ),
              )

          ],
        ),
        
    );
  }
}