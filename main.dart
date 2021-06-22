import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(home: Card()));

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int card = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Information',
            style: TextStyle(
              fontSize: 20.0,
            )),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0.0,
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/background.jpg'),
              Positioned(
                left: 30,
                bottom: 50,
                child: Container(
                  height: 80,
                  width: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/farhan.jpg'),
                  ),
                ),
                //Image.asset("assets/farhan.jpg")),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Text("Farhan Bhuiyan",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          ListTile(
            title: Text("Mail"),
            trailing: Icon(Icons.mail),
            tileColor: Colors.blue[800],
            onTap: () {},
          ),
          SizedBox(height: 12.0),
          ListTile(
            title: Text("Phone"),
            trailing: Icon(Icons.phone),
            tileColor: Colors.blue[700],
          ),
          SizedBox(height: 12.0),
          ListTile(
            title: Text("House No."),
            trailing: Icon(Icons.home),
            tileColor: Colors.blue[600],
            onTap: () {
              print('Container is tapped');
            },
          ),
          SizedBox(height: 12.0),
          ListTile(
            title: Text("permanent Adress"),
            trailing: Icon(Icons.house),
            tileColor: Colors.blue[500],
          ),
          SizedBox(height: 12.0),
          ListTile(
            title: Text("Occupation"),
            trailing: Icon(Icons.work),
            tileColor: Colors.blue[400],
          ),
          SizedBox(height: 12.0),
          ListTile(
            title: Text("Institution"),
            trailing: Icon(Icons.school),
            tileColor: Colors.blue[300],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            card = card + 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/farhan.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.grey,
            ),
            Text('Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 10.0),
            Text('Farhan Bhuiyan',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 20.0),
            Text('Increasement',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 10.0),
            Text('$card',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
                Text(
                  'Imfarhan612@gmail.com',
                  style: TextStyle(
                    color: Colors.amber[400],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
