import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insany/components/card_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const anotherColor = Color(0xFFFE6A8A);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          brightness: Brightness.light,
          primaryColor: Color(0xFF474A94),
          accentColor: Color(0xFF7252AD),
          backgroundColor: Color(0xFFFBFBFC),
          textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
      home: MyHomePage(title: 'INSANY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              offset: Offset(0, 70),
              onSelected: (value) => print(value),
              icon: Icon(Icons.chevron_right, color: MyApp.anotherColor),
              itemBuilder: (_) =>
                  [PopupMenuItem(value: 0, child: Text('Sair'))]),
        ],
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 20),
                Icon(Icons.app_blocking_sharp),
                Container(width: 20),
                Text(widget.title!),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      splashColor: Theme.of(context).accentColor.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Text('aoba'),
                    ),
                    Container(height: 6),
                    Container(
                      height: 2,
                      width: 30,
                      color: MyApp.anotherColor,
                    )
                  ],
                ),
                Container(width: 15),
                Column(
                  children: [
                    InkWell(
                      splashColor: Theme.of(context).accentColor.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Text(
                        'aoba',
                        style: TextStyle(color: Colors.white.withAlpha(100)),
                      ),
                    ),
                    Container(height: 6),
                  ],
                ),
                Container(width: 15),
                Column(
                  children: [
                    InkWell(
                      splashColor: Theme.of(context).accentColor.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Text(
                        'aoba',
                        style: TextStyle(color: Colors.white.withAlpha(100)),
                      ),
                    ),
                    Container(height: 6),
                  ],
                ),
              ],
            ),
            Text('Matheus Stag')
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // CardComponent(),
          ],
        ),
      ),
    );
  }
}
