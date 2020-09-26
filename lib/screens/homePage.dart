import 'package:flutter/material.dart';
import 'package:provider_demo/states/countState.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CountState(),
      child: HomePageState(),
    );
  }
}

class HomePageState extends StatelessWidget {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Provider")),
      ),
      body: Consumer<CountState>(
              builder: (context,countState,child)=>Stack(
          children: [
            Center(child: Text(countState.getCount.toString(),style: TextStyle(fontSize: 25),)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(onPressed: () {
                  countState.incrementCount();
                },child: Icon(Icons.plus_one),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
