import 'package:flutter/material.dart';
import 'package:todo/card.dart';

class MasterClass extends StatefulWidget {
  const MasterClass({super.key});

  @override
  State<MasterClass> createState() => _MasterClassState();
}

class _MasterClassState extends State<MasterClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // LoadingAnimationWidget.discreteCircle(color: Colors.white, size: 50),
              ],
            ),
          )
        ],
        backgroundColor: Colors.purple,
        elevation: 10,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.toc_outlined),
            Padding(
              padding: EdgeInsets.only(left: 1),
            ),
            Text("To Do"),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [TextField()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const CardAdd();
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add_outlined), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notes_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.task_alt_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
