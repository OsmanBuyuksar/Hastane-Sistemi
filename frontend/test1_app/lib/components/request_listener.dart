import 'package:doctor_consultation_app/databaseClasses/doktor.dart';
import 'package:flutter/cupertino.dart';
import 'package:doctor_consultation_app/components/requestParser.dart';

class httpListener extends ChangeNotifier{
  Doktorlar d = Doktorlar();

  void setupDoktorlarListener(){
    doktorlar().asStream().listen((value) {
       d = value as Doktorlar; 
       notifyListeners();
    });
  }
}