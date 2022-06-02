import 'package:flutter/material.dart';
import 'fifthpage.dart';
class Fourthpage extends StatefulWidget {
  const Fourthpage({Key? key}) : super(key: key);

  @override
  State<Fourthpage> createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back,color: Colors.white,size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Fond & Book',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Column(
                        children: [
                          Text('Location',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                          Row(
                            children: [
                              Text('Banglore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              ),
                              Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,size: 20,)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                  color: Colors.black12,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.search,size: 20,color: Colors.black,
                          )
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Doctor Specialities Clinics Hospitals',
                        border: OutlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.white10,
                           width: 1,
                         ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('search by health concern',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          Spacer(),
                          Text('Explore more',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),)
                        ],
                      ),
                      Container(
                        height: 220,
                        child: GridView.builder(
                            itemCount: 6,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3
                            ), itemBuilder: (ctx, index){
                          return Container(
                            margin: EdgeInsets.only(right: 13,top: 13,left: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                            ),

                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset('assets/dr2.jpg',
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text('Piles surgery',textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Container(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Search by Speciality',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 13,
                             fontWeight: FontWeight.w700,
                           ),
                          ),
                          Spacer(),
                          SizedBox(),
                        ],
                      ),
                      Container(
                        height: 300,
                        child: GridView.builder(
                            itemCount: 8,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,childAspectRatio: 2,
                            ), itemBuilder: (ctx, index){
                          return Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(color: Colors.black12,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/dr2.jpg',
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),SizedBox(
                                  width: 10,
                                ),
                                Text('Piles surgery',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
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
                        context, MaterialPageRoute(builder: (context) => Fifthpage()));
                  }, child: Text('Next',
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
    ));
  }
}

