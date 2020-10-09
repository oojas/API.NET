import 'package:APINET/Json/modal.dart';
import 'package:flutter/material.dart';

class Parsing extends StatefulWidget {
  @override
  _ParsingState createState() => _ParsingState();
}

class _ParsingState extends State<Parsing> {
  Future data;
  @override
  void initState() {
    data = json_parsing("https://jsonplaceholder.typicode.com/posts").getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 23,
        title: Text(
          'Json Parsing',
          style: TextStyle(
              fontSize: 20, fontStyle: FontStyle.italic, color: Colors.black87),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.brown.shade300,
      body: Container(),
    );
  }
}
