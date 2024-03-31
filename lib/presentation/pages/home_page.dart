import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';
import 'package:smarthome_koiot/presentation/widgets/energy_usage_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  late PageController _pageViewController;
  var _pageIndex = 0; 

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good morning Steven",
            style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text("${DateFormat('EEEE').format(now)}, ${now.day} ${DateFormat('MMMM').format(now)} ${now.year}",
            style: Theme.of(context).textTheme.labelSmall,
            )
          ],
          
        ),
        actions: [
          IconButton(
            onPressed: (){
              //Feature: Navigate to settings page
          }, 
          icon: Icon(Icons.settings,
          size: 30,
          color: SHColors.black,
          )
          )
        ],
      ),  
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const EnergyUsageWidget(energyUsage: 124.4,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [...["Main Room", "Warking Room", "Side Room"].map((e) => TextButton(
                child: Text(e, style: Theme.of(context).textTheme.bodyMedium?.apply(color: _pageIndex != ["Main Room", "Warking Room", "Side Room"].indexOf(e) ?  SHColors.darkGrey : SHColors.black)),
                onPressed: () => _updateCurrentPageIndex(["Main Room", "Warking Room", "Side Room"].indexOf(e)),
                ))]
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageViewController,
              onPageChanged: _handlePageViewChanged,
              children: [...["Main Room", "Warking Room", "Side Room"].map((e) => Center(
                child: Text(
                  e, style: Theme.of(context).textTheme.labelLarge
                  ),
              ))
              ],
            ),
          ),
        ],
      )
    );
  }
  void _handlePageViewChanged(int currentPageIndex) {
    setState(() {
      _pageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    setState(() {
      _pageIndex = index;
    });
  }
}
