import 'package:flutter/material.dart';
import 'package:practice12aru/passangerReis.dart';

class Passangers extends StatefulWidget {
  @override
  _PassangersState createState() => _PassangersState();
}

class _PassangersState extends State<Passangers> {

  var passangers = [
    {
      'name': 'Aigerim',
      'place': '0 A',
      'place2': 'верхний',
      'type': 'OFFLINE',
      'telNumber': '77079282498',
      'pochta': 'Почта',
      'price': '3000',
      'colorsType': Colors.grey,
    },
    {
      'name': 'Arlan',
      'place': '0 B',
      'place2': 'верхний',
      'type': 'OFFLINE',
      'telNumber': '77073452776',
      'pochta': 'Почта',
      'price': '3000',
      'colorsType': Colors.grey,
    },
    {
      'name': 'ASSEL',
      'place': '1',
      'type': 'ONLINE',
      'place2': 'нижний',
      'telNumber': '77013456644',
      'pochta': 'Почта',
      'price': '2700',
      'colorsType': Colors.green,
    },
    {
      'name': 'TEMIRLAN',
      'place': '1',
      'place2': 'нижний',
      'type': 'ONLINE',
      'telNumber': '77056874222',
      'pochta': 'Почта',
      'price': '2500',
      'colorsType': Colors.green,
    },
    {
      'name': 'Свободные места',
      'place': '',
      'place2': '',
      'type': '',
      'telNumber': ' ',
      'pochta': ' ',
      'price': ' ',
      'colorsType': Colors.white10,
    },
    {
      'name': 'Нет имени',
      'place': '0 A',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'pochta': ' ',
      'price': ' ',
      'colorsType': Colors.green,
    },
    {
      'name': 'Нет имени',
      'place': '0 B',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'pochta': ' ',
      'price': ' ',
      'colorsType': Colors.green,
    },
    {
      'name': 'Нет имени',
      'place': '2',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'pochta': ' ',
      'price': ' ',
      'colorsType': Colors.green,
    },
    {
      'name': 'Нет имени',
      'place': '2',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'pochta': ' ',
      'price': ' ',
      'colorsType': Colors.green,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Пассажиры',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PassangerReis(),
                ));
          },
        ),
        backgroundColor: Colors.green,
        brightness: Brightness.light,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: passangers.length,
        itemBuilder: (context, i) {
          return i == 0 ? _titleText1() : _listPassangers(i - 1);
        },
      ),
    );
  }

  _titleText1() {
    return Container(
      padding: EdgeInsets.only(left: 30.0, top: 10.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Имя',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Место',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Тип',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _listPassangers(i) {
    return GestureDetector(
      onTap: () {
        infoAboutPassanger(context, passangers[i]['name'], passangers[i]['telNumber'], passangers[i]['pochta'], passangers[i]['place'], passangers[i]['place2'], passangers[i]['price']);
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 10.0, right: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  passangers[i]['name'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          passangers[i]['place'].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          passangers[i]['place2'].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 85,
                  height: 35,
                  child: Center(
                    child: Text(
                      passangers[i]['type'].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: passangers[i]['colorsType'],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

infoAboutPassanger(context, name, telNumber, pochta, place, place2, price) {
  return showDialog(
    context: context,
    builder: (context) {
      return GestureDetector(
        child: Card(
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Информация о пассажире',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      name.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      telNumber.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      pochta.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),


                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Место',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              place.toString() + ' ' + place2.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Цена',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              price.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 5,
                    ),


                    OutlineButton(
                      borderSide:
                      BorderSide(width: 2.0, color: Colors.green),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text('Изменить'),
                      onPressed: () {},
                    ),
                    OutlineButton(
                      borderSide:
                      BorderSide(width: 2.0, color: Colors.green),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text('Отправить чек'),
                      onPressed: () {},
                    ),
                    OutlineButton(
                      borderSide:
                      BorderSide(width: 2.0, color: Colors.green),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text('Отменить покупку билета'),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


