import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/firebase.dart';

class FirebaseHelper{
  static fb.Database initDatabase(){
    try{
    if(fb.apps.isEmpty){
      fb.initializeApp(
        apiKey: "AIzaSyBndBKjZ9mYWKJZh_t3k67ZjlxS0HSF6cQ",
        authDomain: "sushi-flutter.firebaseapp.com",
        databaseURL: "https://sushi-flutter-default-rtdb.firebaseio.com",
        projectId: "sushi-flutter",
        storageBucket: "sushi-flutter.appspot.com",
        messagingSenderId: "877687138605",
        appId: "1:877687138605:web:f3eac77e70a6d399224ba4"
      );
  }
  } on fb.FirebaseJsNotLoadedException catch (e){
      print(e);
  }
  return fb.database();
  }
}

class Fire {
  static fb.Database database = FirebaseHelper.initDatabase();
}


Future<String> getOnce(fb.DatabaseReference AdsRef) async{
  late String aux;
  await AdsRef.once('value').then((value) => {aux = value.snapshot.val()});
  return aux;
}

Future<List> getList(fb.DatabaseReference AdsRef) async{
  List list = [""];
  await AdsRef.once('value').then((value) => {list = result(value.snapshot, list)});
  return list;
}

List result(fb.DataSnapshot dp, List list){
    list.clear();
    dp.forEach((v) {
      list.add(v);
    });
    return list;
}
