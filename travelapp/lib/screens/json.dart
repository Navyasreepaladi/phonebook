import 'package:flutter/material.dart';
import 'dart:convert';
void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new jsonpage(),
    ));

// ignore: camel_case_types
class jsonpage extends StatefulWidget {
  @override
  JsonpageState createState() => new JsonpageState();
}

class JsonpageState extends State<jsonpage> {
  List data;
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: !isSearching
            ? new Text("INFO ABOUT PLACES")
            : TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search State Here",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      this.isSearching = false;
                    });
                  })
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // data =data.toLowerCase();
                    setState(() {
                      this.isSearching = true;
                    });
                  })
        ],
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('help_json/about.json'),
            builder: (context, snapshot) {
              //DECODE
              var mydata = json.decode(snapshot.data.toString());
              return new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Text(
                          "✈️STATE:" + mydata[index]['✈️STATE'],
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 25.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          "➢FAMOUS_FOR:" + mydata[index]['➢FAMOUS_FOR'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                        new Text(
                          "➢LANGUAGE:" + mydata[index]['➢LANGUAGE'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                        new Text(
                          "➢FOOD:" + mydata[index]['➢FOOD'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        new Text(
                          "➢BASIC_REGIONAL_WORDS:" +
                              mydata[index]['➢BASIC_REGIONAL_WORDS'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
