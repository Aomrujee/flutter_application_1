import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/FormScreen/form_screen.dart';
import 'package:flutter_application_1/screen/example.dart';
import 'package:flutter_application_1/screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Hello ... "),
        ),
        appBar: AppBar(
          title: Text("My First Project"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(color: Colors.red, child: Text("asdf;laksdfj;laskdfj")),
              Text("asdf;laksdfj;laskdfj"),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: Image.network(
                    'https://nbcmontana.com/resources/media/3b63c05d-82fa-4234-8360-ebf38bb71ef4-large16x9_GettyImages1168285684.jpg?1591641965719'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("กดปุ่มนี้ดู"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                  );
                },
                child: Text("FormScreen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Example(),
                    ),
                  );
                },
                child: Text("Example"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
