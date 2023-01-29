
import 'package:flutter/material.dart';
import 'package:prayertimes/Pages/choose_location.dart';
import 'package:prayertimes/Services/CustomPaintWidget.dart';
import 'package:prayertimes/Services/CustomPageRoute.dart';




//Main home class
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map<String, Object> data ={};

  @override
  Widget build(BuildContext context) {

    data =   ModalRoute.of(context)!.settings.arguments as Map<String, Object>;


    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,20,10,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextButton.icon(
                    onPressed: () =>{
                      Navigator.of(context).push(
                        CustomPageRoute(child: ChooseLocation())
                      ),
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text("edit location",
                    textAlign: TextAlign.center,)
                ),
                    SizedBox(height: 10,),
                Text(
                    data['city'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 19,
                        letterSpacing: 2.2,
                        fontWeight: FontWeight.bold,

                    )
                ),
                Text(
                    data['date'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      letterSpacing: 2,
                    )
                ),
              SizedBox(height: 25,),
              Container(

                child:
                OurCustomPaintWidget(param: {"fajr" : data['fajr']}),
                
              ),

        ],
      ),
          )
      ),
    );
  }
}
