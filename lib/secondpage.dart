import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcto/thirdpage.dart';

import 'firstpage.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Firstpage()));
                  },
                  child:
                  Icon(Icons.arrow_back, color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.help_sharp, color: Colors.black),
                    Text('Help',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Enter your mobile number',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                )
              ),
              child: Row(
                children: [
                  Text('+91',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp,size: 25),
                  Container(
                    height: 30,width: 1,color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text('By Continuing you agery to our'),
            SizedBox(
              height: 10,
            ),
            Text('Terms & Condition',
            style: TextStyle(
              fontSize: 15,
               decoration: TextDecoration.underline,
              fontWeight: FontWeight.w900,
            ),
            )
          ],
        ),
      ),
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
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Thirdpage()));
                  }, child: Text('Continue',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
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
