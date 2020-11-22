import 'package:flutter/material.dart';
import 'package:practice12aru/menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var reisy = [
    "Асыката - Алматы",
    "Город Х - Сарыагаш",
    "Асыката - Город Х",
  ];

  var dataOtp = [
    "06.02.2020 Thu",
    "06.02.2020 Thu",
    "06.02.2020 Thu",
  ];

  var vremyaOtp = [
    "18:39",
    "19:30",
    "17:30",
  ];

  var dataPr = [
    "07.02.2020 Fri",
    "07.02.2020 Fri",
    "07.02.2020 Fri",
  ];

  var vremyaPr = [
    "06:10",
    "18:36",
    "14:15",
  ];

  var avtobus = [
    "YUTONG",
    "End2End Test",
    "YUTONG",
  ];

  var nomer = [
    "KZ 888 KN 02",
    "KZ 123 ABC",
    "KZ 678 DFG",
  ];

  var mesta = [
    "32",
    "53",
    "45",
  ];

  var images = [
    "assets/images/yutong.jpg",
    "assets/images/e2e.jpg",
    "assets/images/yutong.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          'Расписание',
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
          return GestureDetector(
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
                        OutlineButton(
                          borderSide:
                          BorderSide(width: 2.0, color: Colors.green),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text('Удалить рейс'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('ДОБАВИТЬ РЕЙС'),
        backgroundColor: Colors.green,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

