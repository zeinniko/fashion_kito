import 'package:flutter/material.dart';
import 'package:gaya_kito/halaman/landing.dart';
// import 'package:gaya_kito/layar5.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args= settings.arguments;
    switch (settings.name) {
      case '/landing':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Landing(logo: args));
        }
        return _errorRoute();
        break;
        // case '/lima':
        //   if(args is String){
        //     return MaterialPageRoute(builder: (_)=> FiveScreen(data: args));
        //   }
        //      return _errorRoute();
        // break;
      default:
      return _errorRoute();

    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text("Error Page", style: TextStyle(color: Colors.red,),),
      ));
    });
  }
}