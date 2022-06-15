import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appTitle = 'Flutter Basic List Demo';

    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text('Name'),
          subtitle: const Text('Gaurav kumar',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          ),
          trailing: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/dr.jpg',height: 50,width: 50,
              fit: BoxFit.cover,
              )),
        ),

        _buildListTileViewWidget(title: 'Contact Number',subtitle: '+91-8305706255'),
        _buildListTileViewWidget(title: 'Email id',subtitle: 'ergaurav95@gmail.com'),
        _buildListTileViewWidget(title: 'Gender',subtitle: 'Male'),
        _buildListTileViewWidget(title: 'Blood group',subtitle: 'B+'),
        _buildListTileViewWidget(title: 'Marital status',subtitle: 'Single'),
        _buildListTileViewWidget(title: 'Height',subtitle: '5 ft 9 in'),
        _buildListTileViewWidget(title: 'Weight',subtitle: '50kg'),

        const Divider(),
        ListTile(
          title: const Text('Emergency contact'),
          trailing: Column(
            children: const [
              Text('Brother'),
              Text('+91-7384926354')
            ],
          ),
        ),

        _buildListTileViewWidget(title: 'Location',subtitle: 'Noida'),


      ],
    );

  }

  _buildListTileViewWidget({required String title,required String subtitle}){
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Text(title),
          trailing: Text(subtitle),
        ),

      ],
    );
  }
}  