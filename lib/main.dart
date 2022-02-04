import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Push Notifications',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Local push Notifications Demonstration:',
            ),
            SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.notifications), label: Text("Simple Notifications")),
            SizedBox(height: 20,),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.alarm), label: Text("Scheduled Notifications")),
            SizedBox(height: 20,),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.notifications_none), label: Text("Remove Notifications"))
          ],
        ),
      ),
    );
  }
}
