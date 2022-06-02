import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'secondpage.dart';
import 'package:flutter/widgets.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  color: Color(0xFF00008B),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('practo',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      Image.asset('assets/doctor6.jpg',
                      height: 180,
                      width: 100,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Video consult top doctors from the comfort of your home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text('Let get started! Enter your mobile number',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                     padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      )
                    ),
                    child: Row(
                      children:  [
                        Text('+91',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 20,
                        ),
                        Container(
                         color: Colors.black,
                         width: 1,
                         height: 30,
                       ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: 'Enter mobile no.',
                          border: InputBorder.none,),
                      ),
                      ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text('Trouble signin in?',
                    style: TextStyle(
                    decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Secondpage()));
                  },
                  child: Text('Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          )
        )
    );
  }
}
