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
      body: ListView(
        children: const [
          ListTile(
            title: Text("Yeter Ki Sonu İyi Bitsin "),
            subtitle: Text("William Shakespeare"),
            leading: Icon(Icons.arrow_forward_ios_rounded), //başına ikon
          ),
          ListTile(
            title: Text("Gurur ve Önyargı"),
            subtitle: Text("Jane Austen"),
            trailing: Icon(Icons.auto_awesome), //sonuna ikon
          ),
          ListTile(
            title: Text("Milena'ya Mektuplar"),
            subtitle: Text("Franz Kafka"),
            leading: Icon(Icons.water_damage_rounded), //başına ikon
            trailing: Icon(Icons.audiotrack), //sonuna ikon
          )
        ],
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
