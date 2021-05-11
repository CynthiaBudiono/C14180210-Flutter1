import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String hasil = "";
  int nomor = 0;
  int pengali = 1;
  String ubah = "Angka";

  get padding => null;
  void hitkali() {
    setState(() {
      pengali = pengali * 2;
    });
  }

  void hittambah() {
    setState(() {
      nomor = nomor + pengali;
      if(ubah == "Angka"){
        print(nomor);
        hasil = hasil + nomor.toString() + " ";
      }
      else{
        print(nomor);
        hasil = hasil + String.fromCharCode(nomor+64) + " ";
      }
     
    });
  }

  void hitubah() {
    setState(() {
      if(ubah == "Angka"){
        ubah = "Huruf";
      }
      else{
        ubah = "Angka";
      }
    });
  }

  void hitreset() {
    setState(() {
      hasil = "";
      nomor = 0;
      pengali = 1;
      ubah = "Angka";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("aplikasi pertama dengan button"),
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(colors: <Color>[Colors.lime, Colors.orange])),
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Pengali : " + pengali.toString()),
              Text("Hasil : " + hasil.toString()),
              Text(ubah.toString()),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  <Widget>[
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Kalikan dengan 2"),
                        onPressed: hitkali),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Tambahkan"),
                        onPressed: hittambah),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Ubah ke Huruf"),
                        onPressed: hitubah,
                        color: Colors.lightBlueAccent),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("RESET"),
                        onPressed: hitreset,
                        color: Colors.lightBlueAccent),
                  ]), 
            ],
            
          ),
        ),
      ),
    );
  }
}
