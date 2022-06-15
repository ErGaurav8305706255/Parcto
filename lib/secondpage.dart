import 'package:flutter/material.dart';
import 'package:parcto/thirdpage.dart';

import 'firstpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstPage()));
                  },
                  child:
                  const Icon(Icons.arrow_back, color: Colors.black),
                ),
                Row(
                  children: const [
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
            const SizedBox(
              height: 20,
            ),
            const Text('Enter your mobile number',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                )
              ),
              child: Row(
                children: [
                  const Text('+91',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  ),
                  const Icon(Icons.keyboard_arrow_down_sharp,size: 25),
                  Container(
                    height: 30,width: 1,color: Colors.black,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
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
            const SizedBox(
              height: 50,
            ),
            const Text('By Continuing you agery to our'),
            const SizedBox(
              height: 10,
            ),
            const Text('Terms & Condition',
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
              padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const ThirdPage()));
                  }, child: const Text('Continue',
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
