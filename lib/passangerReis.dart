import 'package:flutter/material.dart';
import 'package:practice12aru/menu.dart';
import 'package:practice12aru/passangers.dart';
class PassangerReis extends StatefulWidget {
  @override
  _PassangerReisState createState() => _PassangerReisState();
}

class _PassangerReisState extends State<PassangerReis> {
  var reisy = [
    "Асыката - Алматы",
    "Сарыагаш - Алматы",
    "Асыката - Город Х",
  ];

  var dataOtp = [
    "06.02.2020 Thu",
    "07.02.2020 Thu",
    "08.02.2020 Thu",
  ];

  var vremyaOtp = [
    "18:39",
    "10:00",
    "17:30",
  ];

  var dataPr = [
    "07.02.2020 Fri",
    "08.02.2020 Sat",
    "07.02.2020 Fri",
  ];

  var vremyaPr = [
    "06:10",
    "00:00",
    "14:15",
  ];

  var avtobus = [
    "YUTONG",
    "YUTONG",
    "End2End Test",
  ];

  var nomer = [
    "KZ 888 KN 02",
    "KZ 888 KN 02",
    "KZ 678 DFG",
  ];

  var mesta = [
    "32",
    "32",
    "45",
  ];

  var images = [
    "assets/images/yutong.jpg",
    "assets/images/yutong.jpg",
    "assets/images/e2e.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          'Выберите рейс',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.green,
        brightness: Brightness.light,
        elevation: 0,
      ),
      drawer: Menu(),
      body: ListView.builder(
        itemCount: reisy.length,
        itemBuilder: (context, i) {
          return i == 0 ? _titleTextPasReis() : _listPassangerReis(i - 1);
        },
      ),
    );
  }

  _titleTextPasReis() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Сегодня',
            style: TextStyle(
                color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3,
          )
        ],
      ),
    );
  }

  _listPassangerReis(i) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Passangers(),
            ));
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                width: 140,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(images[i])),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    reisy[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Отправление',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Дата - ' + dataOtp[i],
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Время - ' + vremyaOtp[i],
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Прибытие',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Дата - ' + dataPr[i],
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Время - ' + vremyaPr[i],
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    avtobus[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    nomer[i] + ' ' + mesta[i] + ' мест',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
