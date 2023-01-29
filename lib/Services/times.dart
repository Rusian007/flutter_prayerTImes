import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'package:intl/intl.dart';

class Times {
  late String city;
  late String date;
  String location;
  late String today;
  late String tomorrow;

  late String FajrTime;
  late String SunriseTime;

  String flag;
  String SiteUrl;

  Times(this.location, this.flag, this.SiteUrl);


  Future<void> getTime() async {
    try{
      var url = Uri.https('$SiteUrl', '$location');
      var response = await http.get(url);
      Map data = jsonDecode(response.body);

      //print(data['products'][1]);
      today = data['today'].toString();

     FajrTime = data['today']['Fajr'].toString();
     SunriseTime = data['today']['Sunrise'].toString();


      tomorrow = data['tomorrow'].toString();
      date = data['date'];

      city = data['city'];
    }catch (e){
      print("Error Caught: $e");
      today = "Could not get data, Check your internet";
      tomorrow = "Something went wrong :(";
      date = "having internet problems";
      city = ":(";
    }

  }
}