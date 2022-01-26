import 'package:flutter/material.dart';
import 'package:common_garbage/tensorflow.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Garbage Classifier",
          style: TextStyle(color: Colors.white, fontSize: 26,),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 160.0,
                width: 160.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    tooltip: 'just img',
                    onPressed: (){},
                    child: Icon(Icons.bubble_chart ,size: 30,color: Colors.white,),
                    backgroundColor: Colors.amber,
                  ),
                ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Tensorflow()));},
                child: Text('  Detect  ',style: TextStyle(fontSize: 20),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),

            ],
          ),
        ),
      ),
    );
  }
}