import 'package:flutter/material.dart';

class CardAdd extends StatefulWidget {
  const CardAdd({Key? key}) : super(key: key);

  @override
  State<CardAdd> createState() => _CardAddState();
}

class _CardAddState extends State<CardAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        color: Colors.amber[50],
        margin: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        shadowColor: Colors.pink[50],
        child: Container(
          margin: const EdgeInsets.all(10),
          child: const ListTile(
            leading: Icon(Icons.notes_outlined),
            title: TextField(
              decoration: InputDecoration(hintText: "Başlık"),
            ),
            subtitle: TextField(
              decoration: InputDecoration(),
            ),
          ),
        ),
      ),
    );
  }
}
