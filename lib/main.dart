import 'package:flutter/material.dart';
import 'package:flutter_water_can/investment.dart';
import 'package:flutter_water_can/optimiser.dart';
import 'package:flutter_water_can/user.dart';
import 'package:flutter_water_can/water_price.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Can',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  late TabController _tabController;

  @override
  void initState(){
   super.initState();

  }

  @override
  Widget build(BuildContext context) {

    final tabs = [
      const WaterPricePage(),
      const OptimiserPage(),
      const InvestmentPage(),
      const UserPage()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(["Water Price","Optimiser","Investment","Me"][_currentIndex]),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.teal,
        fixedColor: Colors.amber,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.water_drop,), label: "Water Price", backgroundColor: Colors.teal),
          BottomNavigationBarItem(icon: Icon(Icons.filter_alt_sharp),label: "Optimiser",backgroundColor: Colors.teal),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on_outlined),label: "Investment",backgroundColor: Colors.teal),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_rounded),label: "Me",backgroundColor: Colors.teal)
        ],
        onTap: (index){
          setState((){
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

