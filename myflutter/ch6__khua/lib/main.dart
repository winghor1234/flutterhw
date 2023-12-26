import 'package:flutter/material.dart';
import 'package:ch6__khua/ContainerWithBoxDecoration.dart';
import 'package:ch6__khua/Buttons.dart';
import 'package:ch6__khua/ButtonBar.dart';
import 'package:ch6__khua/Columnandrow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my home work',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget {
  const myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text('Bottom'),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const ContainerWithBoxDecorationWidget(),
                const ButtonsWidget(),
                Divider(),
                const ButtonBarWidget(),
                Divider(),
                const ColumnAndRowNestingWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

