import 'package:flutter/material.dart';
import 'fifthpage.dart';
class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back,color: Colors.white,size: 20),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Fond & Book',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Column(
                        children: [
                          const Text('Location',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                          Row(
                            children: const [
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
                  decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.search,size: 20,color: Colors.black,
                          )
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Doctor Specialities Clinics Hospitals',
                        border: OutlineInputBorder(
                         borderSide: const BorderSide(
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
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
                      SizedBox(
                        height: 220,
                        child: GridView.builder(
                            itemCount: 6,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3
                            ), itemBuilder: (ctx, index){
                          return Container(
                            margin: const EdgeInsets.only(right: 13,top: 13,left: 13),
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
                                  const Text('Piles surgery',textAlign: TextAlign.center,
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
                Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  child: Column(
                    children: [
                      Row(
                        children: const [
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
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                            itemCount: 8,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,childAspectRatio: 2,
                            ), itemBuilder: (ctx, index){
                          return Container(
                            margin: const EdgeInsets.all(2),
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
                                ),const SizedBox(
                                  width: 10,
                                ),
                                const Text('Piles surgery',textAlign: TextAlign.center,
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
                        context, MaterialPageRoute(builder: (context) => const FifthPage()));
                  }, child: const Text('Next',
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

