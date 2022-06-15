import 'package:flutter/material.dart';

import 'fourthpage.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  String dropdownvalue = 'Banglore';
var items = ['Banglore','Delhi','Mumbai','Channai','Hydrabad','Noida'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _key,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      const SizedBox(),
                      InkWell(
                        onTap: _buildDrawerView,
                          child: const Icon(Icons.menu,color: Colors.black,size: 40)),
                      const Spacer(
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 4),
                        height: 40,width: 170,
                        decoration: BoxDecoration(color: Colors.pinkAccent.withOpacity(0.4),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: DefaultTabController(
                          length: 2,
                          child: TabBar(
                              unselectedLabelColor: Colors.black,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5), // Creates border
                                  color: Colors.purpleAccent),
                              tabs: const [
                            Tab(text: 'Explore',
                            ),
                            Tab(
                              text:'PLUS',
                            ),
                          ]
                          ),
                        ),
                      ),
                      const Icon(Icons.account_balance_wallet_outlined,size: 40,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on,size: 20),
                     DropdownButton(
                       underline: Container(),
                       style: const TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.w700,
                       color: Colors.black,
                     ),
                       value: dropdownvalue,focusColor: Colors.transparent,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp,size: 25, color: Colors.black),
                       items: items.map((String items) {
                         return DropdownMenuItem(
                           value: items,
                           child: Text(items),
                         );
                       }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text('practo',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Text('care',
                                        style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                const Text('Your are in safe hands',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('Choose the experts in end to end surgical care',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                  )
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white,width: 1)
                                      ),
                                      child: const Text('Know more',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    ),
                                ]
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/dr.jpg',
                                height: 180,width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,
                      ),
                      const Text('Our Offerings',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black12,width: 1,)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
                              child: Image.asset('assets/dr3.jpg',
                              height: 150,
                                width: 200,
                                 fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('Find Doctor Near You',textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Text('Confirmed appoinment',textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.black12,width: 1,)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
                              child: Image.asset('assets/dr4.jpg',
                                height: 150,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('Instant video consultant',textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Text('Connect with 60 secs',textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black12,width: 1,)
                          ),
                          child: Column(
                            children: [
                              ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
                                child: Image.asset('assets/medicin.jpg',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Medicines',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black12,width: 1,)
                          ),
                          child: Column(
                            children: [
                              ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
                                child: Image.asset('assets/lab.jpg',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Lab Test',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black12,width: 1,)
                          ),
                          child: Column(
                            children: [
                              ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
                                child: Image.asset('assets/surgeries.jpg',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Surgeries',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                        context, MaterialPageRoute(builder: (context) => const FourthPage()));
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
          ),
    );
  }
  _buildDrawerView(){
    _key.currentState!.openDrawer();
  }
}
