import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callhistory extends StatelessWidget {
  const Callhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Board Of Director',style: TextStyle(
          color: Colors.brown,
            fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.cyan,
      ),
      body:Container(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.redAccent,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListTile(
                          leading: Image.asset('assets/deep1.jpg'),
                          title: const Text('Deep Padalia'),
                          subtitle: const Text('Chairman and Managing Director'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/meet.jpg',),
                          title: const Text('Meet Padalia'),
                          subtitle: const Text('Executive Director'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/jay.jpg'),
                          title: const Text('Jay Patel'),
                          subtitle: const Text('Chief Human Resources Officer'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/mayank.jpg'),
                          title: const Text('Maynak Purohit'),
                          subtitle: const Text('Chief Financial Officer'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/img.png'),
                          title: const Text('Raj Patel'),
                          subtitle: const Text('Chief Marketing Officer'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
