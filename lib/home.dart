import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // for http requests

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: const Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer1(),
                      ),

                      SizedBox(
                        width: 250,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: const Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
                          ),
                        ),),
                    ],)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: const Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer4(),
                      ),

                      SizedBox(
                        width: 250,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: const Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1545396872-a6682fc218ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),),
                    ],)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: const Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer3(),
                      ),

                      SizedBox(
                        width: 250,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: const Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1525640932057-b18561aca9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),),
                    ],)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: const Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: myDetailsContainer2(),
                      ),

                      SizedBox(
                        width: 250,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: const Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1526399232581-2ab5608b6336?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),),
                    ],)
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Candy Bliss",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),),
        ),

        Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Chocolate Haven",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),),
        ),

        Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Cake Walk",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),),
        ),

        Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),),
      ],
    );
  }

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Chocolate Bar",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),),
        ),

        Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),),
      ],
    );
  }




  }
