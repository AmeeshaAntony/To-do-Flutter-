import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children :[
              Icon(Icons.menu,color: Colors.black,size:30),
              Container(
                height: 40,width: 40,child: ClipRRect( borderRadius : BorderRadius.circular(20),child : Image.asset('Economics1.jpg'),
                ),
              )
          ]
        ),
        ),
        body: Container(
          child: Text('Home page'),
        ),
    );
  }
}