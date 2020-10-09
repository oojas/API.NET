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
    data = fetchData();
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
      body: FutureBuilder(
          future: fetchData(),
          builder: (context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return ListBuilder(snapshot.data, context);
            }
            return CircularProgressIndicator();
          }),
    );
  }

  Widget ListBuilder(List data, BuildContext context) {
    return ListView.builder(itemBuilder: (context, int index) {
      return ListTile();
    });
  }
}

Future fetchData() {
  String url = "https://jsonplaceholder.typicode.com/posts";
  var data;
  json_parsing obj = new json_parsing(url);
  data = obj.getData();
  return data;
}
