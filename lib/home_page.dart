import 'package:flutter/material.dart';
import 'package:riyaz/second_page.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

String btnText1 = "Button One";
String btnText2 = "Button Two";
Color btnColor1 = Colors.purple;
Color btnColor2 = Colors.red;
bool imgVis1 = false;
bool imgVisi2 = false;
String imgSrc1 =
    "https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg";
double imgHeight = 150;
double imgWidth = 200;

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Shikhte Asci"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text("Colo jai Second Page AA")),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: imgHeight,
                        width: imgWidth,
                        child: Image.network(imgSrc1)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(imgSrc1), fit: BoxFit.cover),
                          border:
                              Border.all(color: Colors.deepOrange, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: imgHeight,
                        width: imgWidth,
                      ),
                    ),
                    Container(
                        height: imgHeight,
                        width: imgWidth,
                        child: Image.network(imgSrc1)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: imgHeight,
                        width: imgWidth,
                        child: Image.network(imgSrc1)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: imgHeight,
                        width: imgWidth,
                        child: Image.network(imgSrc1)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: imgHeight,
                        width: imgWidth,
                        child: Image.network(imgSrc1)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                  color: btnColor1,
                  child: Text(btnText1),
                  onPressed: () {
                    setState(() {
                      btnColor1 = Colors.amber;
                      btnText1 = "Button Presed";
                      imgVis1 = true;
                    });
                  }),
              Visibility(
                visible: imgVis1,
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.network(imgSrc1),
                ),
              ),
              SizedBox(height: 15),
              RaisedButton(
                  color: btnColor2,
                  child: Text(btnText2),
                  onPressed: () {
                    setState(() {
                      btnColor2 = Colors.amber;
                      btnText2 = "Button Pressed";
                      imgVisi2 = true;
                    });
                  }),
              SizedBox(
                height: 15,
              ),
              Visibility(
                visible: imgVisi2,
                child: Container(
                  height: 200,
                  width: 150,
                  child: Image.asset("assets/images/images1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
