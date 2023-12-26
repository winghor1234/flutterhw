import 'package:flutter/material.dart';


class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(),
        Divider(),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              icon: Icon(Icons.flight),
              onPressed: () {},
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              icon: Icon(Icons.flight),
              iconSize: 42.0,
              color: Colors.lightGreen,
              tooltip: 'Flight',
              onPressed: () {},
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}