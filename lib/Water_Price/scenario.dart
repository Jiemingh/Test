import 'package:flutter/material.dart';
import 'package:flutter_water_can/Water_Price/crops.dart';

class ScenarioPage extends StatefulWidget {
  const ScenarioPage({Key? key}) : super(key: key);

  @override
  State<ScenarioPage> createState() => _ScenarioPageState();
}

class _ScenarioPageState extends State<ScenarioPage> {
  List<dynamic> scenarios = ['Default', 'Finley1', 'Yenda', 'Finley'];

  final _textFieldController = TextEditingController();

  Future addScenarioDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Add New Scenario'),
            content: TextField(
                controller: _textFieldController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Enter the name',
                )),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      scenarios.add(_textFieldController.text);
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Add')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'))
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Scenarios",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        addScenarioDialog();
                      },
                      child: Icon(Icons.add)),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.replay))
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 400,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: scenarios.length,
                  itemBuilder: (_, index) {
                    var scenario = scenarios[index];
                    //test comment

                    return Dismissible(
                      key: ObjectKey(scenarios[index]),
                      child: ListTile(
                        title: Text(
                          "${scenario}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.yellow),
                        ),
                        trailing: ElevatedButton(
                          child: Icon(Icons.copy),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
