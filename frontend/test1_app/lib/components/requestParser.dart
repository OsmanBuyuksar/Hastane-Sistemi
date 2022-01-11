import 'package:doctor_consultation_app/databaseClasses/doktor.dart';
import 'package:doctor_consultation_app/components/request_sender.dart';

Future<Doktorlar> doktorlar() async{
  return parseDoktorlar(await listTable("doktor"));
}