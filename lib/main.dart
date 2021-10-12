import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

String btnText1="Button One";
String btnText2="Button Two";
Color btnColor1=Colors.purple;
Color btnColor2=Colors.red;
bool  imgVis1=false;
bool imgVisi2=false;
String imgSrc1="https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg";
double imgHeight=150;
double imgWidth=200;


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

String btnText="button 1";

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
              SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    Container(
                    height: imgHeight,
                      width: imgWidth,
                       child:
                         Image.network(imgSrc1)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image:
                NetworkImage(imgSrc1), fit: BoxFit.cover),
                border: Border.all(color: Colors.deepOrange, width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
                  height: imgHeight,
                  width: imgWidth,
                  child:
                  Image.network(imgSrc1)
            ),
          ),
          Container(
                height: imgHeight,
                width: imgWidth,
                child:
                Image.network(imgSrc1)
          ),
          Container(
                height: imgHeight,
                width: imgWidth,
                child:
                Image.network(imgSrc1)
          ),
          Container(
                height: imgHeight,
                width: imgWidth,
                child:
                Image.network(imgSrc1)
          ),
          Container(
                height: imgHeight,
                width: imgWidth,
                child:
                Image.network(imgSrc1)
          ),

                  ],
                ),
              ),





              SizedBox(
                height: 15,
              ),
              RaisedButton(
                color:btnColor1,
                child: Text(btnText1),
                onPressed: (){
                  setState(() {
                    btnColor1=Colors.amber;
                    btnText1="Button Presed";
                    imgVis1=true;
                  });

                }
              ),
              Visibility(
                visible: imgVis1,
                child: Container(
                  height: 200,
                  width: 200,
                  child:
                  Image.network(imgSrc1),
                  ),

                ),


              RaisedButton(
                  color:btnColor2,
                  child: Text(btnText2),
                  onPressed: (){
                    setState(() {
                      btnColor2=Colors.black;
                      btnText2="Button Pressed";
                      imgVisi2=true;

                    });

                  }
              ),
              Visibility(
                visible: imgVisi2,
                child: Container(
                  height: 200,
                  width: 150,
                  child:

                  Image.asset("assets/images/image1.jpg"),


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


