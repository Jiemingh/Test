import 'package:flutter/material.dart';
import 'package:flutter_water_can/Water_Price/crops.dart';
import 'package:flutter_water_can/Water_Price/profitnprice.dart';
import 'package:flutter_water_can/Water_Price/scenario.dart';

class WaterPricePage extends StatelessWidget {
  const WaterPricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.indigo,
            bottom: TabBar(
              tabs: const [
                Tab(
                  text: "Scenario",
                ),
                Tab(
                  text: "Crops",
                ),
                Tab(
                  text: "Profit x Price",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [ScenarioPage(), CropsPage(), ProfitandPricePage()],
          )),
    );
  }
}
