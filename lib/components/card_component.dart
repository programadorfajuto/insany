import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  @override
  _CardComponentState createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Theme.of(context).backgroundColor,
      child: InkWell(
        splashColor: Theme.of(context).accentColor.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
