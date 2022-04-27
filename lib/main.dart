import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Coba Flutter',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Add Product'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Product Information',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 5),
                      child: Text(
                        'Product Image',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 50,
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 5),
                      child: Text(
                        'Product Name',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Gojou Satoru',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        'Product ID',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'GS-789',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        'Price',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Rp.1000.000.000.000',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        'Stock',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '1',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        'Description',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter a description',
                      ),
                      maxLines: 10,
                      minLines: 1,
                    ),
                    Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blueGrey,
                          child: Text(
                            'Add Product',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        )),
                  ],
                ))));
  }
}
