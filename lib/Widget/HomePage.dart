import 'package:flutter/material.dart';
import 'kiriltextformfiled.dart';
import './lotintextformfiled.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          //backgroundColor: Color.fromRGBO(255, 255, 255, 300),
          appBar: AppBar(
            backgroundColor: Colors.green[700],
            title: const Text ("Lotin-Kiril"),
          ),
          body:Column(
          children:  [
          const TabBar(
            indicatorColor: Colors.green,
          tabs: [
          Tab(
            child: Text("Lotin",
          style:TextStyle(
            color: Color.fromRGBO(0, 0, 0, 80),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ) ,
        ),
      ),
           Tab(
             child: Text("Kiril",
        style:TextStyle(
          color: Color.fromRGBO(0, 0, 0, 80),
          fontSize: 20,
          fontWeight: FontWeight.bold,
                    ) ,
                  ),
           ),
                ],
              ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: const Center(
                    child: SingleChildScrollView(child: List()),
                  ),
                ),
              Container(
              child: const Center(
              child: SingleChildScrollView(child: ListKiril()),
              ),
            ),
           ],
          ),
         ),
        ],
        ),
      ),
    );
  }
}
