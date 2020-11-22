import 'package:flutter/material.dart';
import 'package:practice12aru/passangerReis.dart';

class Passangers extends StatefulWidget {
  @override
  _PassangersState createState() => _PassangersState();
}

class _PassangersState extends State<Passangers> {
  var names = [
    "Aigerim",
    "Arlan",
    "ASSEL",
    "TEMIRLAN",
    "Свободные места",
    "Нет имени",
    "Нет имени",
    "Нет имени",
    "Нет имени",
  ];

  var telNumbers = [
    "77079282498",
    "77073452776",
    "77013456644",
    "77056874222",
    " ",
    " ",
    " ",
    " ",
    " ",
  ];

  var pochta = [
    "Почта",
    "Почта",
    "Почта",
    "Почта",
    " ",
    " ",
    " ",
    " ",
    " ",
  ];

  var price = [
    "3000",
    "3000",
    "2700",
    "2900",
    " ",
    " ",
    " ",
    " ",
    " ",
  ];

  var places = [
    "0 A",
    "0 B",
    "1",
    "1",
    "",
    "0 A",
    "0 B",
    "2",
    "2",
  ];

  var places2 = [
    "верхний",
    "верхний",
    "нижний",
    "нижний",
    "",
    "нижний",
    "нижний",
    "нижний",
    "нижний",
  ];

  var type = [
    "OFFLINE",
    "OFFLINE",
    "ONLINE",
    "ONLINE",
    "",
    "no type",
    "no type",
    "no type",
    "no type",
  ];

  var colorsType = [
    Colors.grey,
    Colors.grey,
    Colors.green,
    Colors.green,
    Colors.white10,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
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
        itemCount: names.length,
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
        infoAboutPassanger(context, names[i], telNumbers[i], pochta[i], places[i], places2[i], price[i]);
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
                  names[i],
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
                          places[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          places2[i],
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
                      type[i],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: colorsType[i],
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
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      telNumber,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      pochta,
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
                              place + ' ' + place2,
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
                              price,
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
