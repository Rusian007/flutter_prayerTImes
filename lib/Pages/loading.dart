import 'package:flutter/material.dart';
import 'package:prayertimes/Services/times.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupTime() async{
    Times newTime = Times('api/dhaka', 'dhaka.png', 'dailyprayer.abdulrcs.repl.co');
    await newTime.getTime();
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'date': newTime.date,
    'flag': newTime.flag,
    'today': newTime.today,
    'tomorrow': newTime.tomorrow,
    'city': newTime.city,
    'fajr': newTime.FajrTime
  });
    //await _write(newTime.date.toString());
   // var texts =await _read();
    //print("Here you go**** $texts");
  }

  /*_write(String text) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/timeP.txt');
    await file.writeAsString(text);
  }*/

  /*Future<String> _read() async {
    String text="";
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      final File file = File('${directory.path}/timeP.txt');
      text = await file.readAsString();

    } catch (e) {
      print("Couldn't read file");
    }
    return text;
  }*/

  @override
  void initState() {
    super.initState();
    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Loading ..."),
      ),
    );
  }
}
