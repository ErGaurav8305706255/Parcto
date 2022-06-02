import 'package:flutter/material.dart';

class Medical extends StatelessWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Basic List Demo';

    return Container(
      child:  ListView(
        children: <Widget>[
          ListTile(
            title: Text('Allergies'),
            trailing: Text('No'),
          ),
          Divider(),
          ListTile(
            title: Text('Current medication'),
            trailing: Text('add medication'),
          ),
          Divider(),
          ListTile(
            title: Text('Past medication'),
            trailing: Text('add medication'),
          ),
          Divider(),
          ListTile(
            title: Text('Cronic Diseases'),
            trailing: Text('add diseases'),
          ),
          Divider(),
          ListTile(
            title: Text('Injuries'),
            trailing: Text('add incident'),
          ),
          Divider(),
          ListTile(
            title: Text('Surgeries'),
            trailing: Text('add Surgeries'),
          ),

        ],
      ),
    );

  }
}