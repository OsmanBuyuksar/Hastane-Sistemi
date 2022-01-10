import 'dart:convert';
import 'package:doctor_consultation_app/dataBaseClasses/doktor.dart';
import 'package:http/http.dart' as http;

Future<http.Response> listTable(tableName) async{
  final response =  await http.get(Uri.parse("http://10.0.2.2:3000/" + tableName));
  return response;
}

Future<http.Response> insertDoctor(ad, soyad, sifre, anabilim) async {
  final response = await http.post(
    Uri.parse('http://10.0.2.2:3000/doktor'),
    
    body: {'Doktor_adi': ad,'Doktor_soyadi': soyad,'Doktor_sifresi': sifre,'anabilim_dali': anabilim}
  );
    return response;
}

