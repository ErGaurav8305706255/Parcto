import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int currentIndex = 0;

  final List items = [
    'assets/doctor6.jpg',
    'assets/dr6.jpg',
    'assets/dr5.jpg',
    'assets/dr7.jpg',
    'assets/dr.jpg',
    'assets/dr1.jpg',
    'assets/dr2.jpg',
    'assets/dr3.jpg',
    'assets/dr4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    color: const Color(0xFF00008B),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'practo',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80)),
                          child: CarouselSlider(
                            options: CarouselOptions(
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                height: 250.0,
                                viewportFraction: 1,
                                enableInfiniteScroll: true,
                                autoPlay: true,
                                reverse: false,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true),
                            items: items.map((items) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.all(
                                  //         Radius.circular(80))),
                                  margin: const EdgeInsets.symmetric(horizontal: 1),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(80),
                                      child: Image.asset(items,
                                        fit: BoxFit.cover,
                                      )
                                ),
                                  // color: items,
                                );
                              });
                            }).toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (var i = 0; i < items.length; i++)
                              buildIndicator(currentIndex == i)
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Video consult top doctors from the comfort of your home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: const Text(
                      'Let get started! Enter your mobile number',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          )),
                      child: Row(
                        children: [
                          const Text(
                            '+91',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                          Container(
                            color: Colors.black,
                            width: 1,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Enter mobile no.',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: const Text(
                      'Trouble signin in?',
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()));
                    },
                    child: const Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }

  Widget buildIndicator(bool currentIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex ? Colors.white : Colors.black12,
        ),
      ),
    );
  }
}
