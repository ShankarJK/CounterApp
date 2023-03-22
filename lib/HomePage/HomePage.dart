import 'package:counterapp/HomePage/HomePageVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomePageVM _instance = HomePageVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) {
              return CircleAvatar(
                  radius: 30,
                  // Create the text widget and consume the counter from the model
                  child: Text(_instance.counter.toString()));
            }),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: _instance.addCount,
                    child: const Icon(Icons.add)),
                ElevatedButton(
                    onPressed: _instance.subtractCount,
                    child: const Icon(Icons.remove))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
