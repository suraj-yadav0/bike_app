import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
    int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const BackButton(),
                  Container(
                    width: 274,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text(
                        'Check Out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 183,
                width: 330,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(186, 186, 186, 1),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 295,
                      height: 70,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(229, 229, 229, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Date',
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 126, 126, 1),
                                    fontSize: 20),
                              ),
                              Text('19/6/2021',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20))
                            ],
                          ),
                          Icon(
                            Icons.calendar_month,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 295,
                      height: 70,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(229, 229, 229, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'End Date',
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 126, 126, 1),
                                    fontSize: 20),
                              ),
                              Text('12/7/2021',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20))
                            ],
                          ),
                          Icon(
                            Icons.calendar_month,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 329,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Center(
                    child: Text(
                  'Apply coupon',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Days',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text('4',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rent',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text('₹ 5996',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Additional Item',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text('₹ 6400',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coupon Discount',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text('₹ 396',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text('₹ 12000',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
              Container(
                height: 64,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(14)),
                    child: GestureDetector(onTap:(){} , child : const  Center(child: Text("PAY",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),)),
              )
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Maps"),
        
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
