import 'package:flutter/material.dart';
import 'new_page.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            color: Colors.orange,
            textColor: Colors.black,
            onPressed: versNewPage,
            child: Text('Appuyer')));
  }

  void snack() {
    SnackBar snackBar = SnackBar(
        content: Text(
          'Je suis une snackbar',
          textScaleFactor: 1.5,
        ),
        duration: Duration(seconds: 5));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<Null> alert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
              title: Text('Ceci est une alerte', textScaleFactor: 1.5),
              content: Text(
                  'Houston nous avons un problème avec notre application. Continuer ?'),
              contentPadding: EdgeInsets.all(0.5),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      print('Abort');
                      Navigator.pop(context);
                    },
                    child:
                        Text('Annuler', style: TextStyle(color: Colors.red))),
                FlatButton(
                    onPressed: () {
                      print('Proceed');
                      Navigator.pop(context);
                    },
                    child: Text('Continuer',
                        style: TextStyle(color: Colors.green)))
              ]);
        });
  }

  Future<Null> dialog(String title, String desc) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SimpleDialog(
              title: Text(title, textScaleFactor: 1.4),
              contentPadding: EdgeInsets.all(10.0),
              children: <Widget>[
                Text(desc),
                RaisedButton(
                    color: Colors.teal,
                    textColor: Colors.white,
                    child: Text('Ok'),
                    onPressed: () {
                      print('Appuyé');
                      Navigator.pop(context);
                    })
              ]);
        });
  }

  void versNewPage() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return NewPage();
    }));
  }
}
