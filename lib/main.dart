import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
String btnText="One click";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset image"),
        centerTitle: true,

      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text("Button"),
                color: Colors.amber,
                onPressed: (){
                  setState(() {
                    btnText="One click";
                  });

                }
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.network("https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg"
                ),

              ),
              Container(
                height: 200,
                width: 150,
                child:
                Image.asset("assets/images/image1.jpg"),


              ),
            ],
          ),
        ),
      ),

    );
  }
}


