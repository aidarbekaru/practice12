import 'package:flutter/material.dart';
import 'package:practice12aru/home.dart';
import 'package:practice12aru/passangerReis.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 3,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Test Company',
                      style: TextStyle(fontSize: 22, color: Colors.black54)),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Aty Zhoni',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54)),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.aspect_ratio),
            title: Text('Продажа билетов'),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Список администраторов'),
          ),
          ListTile(
            leading: Icon(Icons.airport_shuttle),
            title: Text('Автобусы'),
          ),
          ListTile(
            leading: Icon(Icons.assessment),
            title: Text('Статистика'),
          ),
          ListTile(
            leading: Icon(Icons.airline_seat_recline_normal),
            title: Text('Пассажиры'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PassangerReis(),
                  ))
            },
          ),
          ListTile(
            leading: Icon(Icons.watch_later),
            title: Text('Расписание'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ))
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('История'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки'),
          ),
        ],
      ),
    );
  }
}
