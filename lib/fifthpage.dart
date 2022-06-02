import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcto/lifestyle.dart';
import 'package:parcto/medical.dart';
import 'package:parcto/personal.dart';

import 'constant/string_constant.dart';

class Fifthpage extends StatelessWidget {
  const Fifthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.indigo,
              leading: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              title: Text(StringConstants.name),
              bottom: (TabBar(
                tabs: [
                  Tab(text: 'Personal',
                  ),
                  Tab(
                    text:'Medical',
                  ),
                  Tab(
                    text: 'Lifestyle',
                  ),
                ],
              )
              )
          ),
          body: TabBarView(children: [
            Personal(),
            Medical(),
            Lifestyle(),
          ]),

          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Fifthpage()));
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: 'Complete Profile\n',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )
                        ),
                        TextSpan(text: '45% completed',
                        style: TextStyle(
                          fontSize: 10,

                        )
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ),
          ),
        ),
    );

  }
}