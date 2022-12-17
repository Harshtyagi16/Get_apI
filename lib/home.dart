import 'dart:convert';
import 'dart:ffi';

import 'package:api_handle/model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SamplePosts> samplePosts =[];
  @override
  void initState(){
    getData();
    super.initState();


  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title:  const Text('Http Get request'),
        ),
        body:  ListView.builder(
        itemCount: 1,
    itemBuilder: (BuildContext context, int index){
          return  Card(
            margin: EdgeInsets.all(2),
            child: ExpansionTile(
              title: Text('Http Request'),
              children: [Column
                (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Id : id"),
                  Text("It : it"),
                  Text("Title : title"),
                  Text("Body : body"),
                ],
              )],
              
            ),
          );


    },
      ),
    )
    );
  }
  Future<Void> getData() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    var data = jsonDecode(response.body.toString());
    print("status code kya hai");
    print(response.statusCode);
    return data;
  }







}

