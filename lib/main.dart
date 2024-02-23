import 'package:coin/screen/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(useMaterial3: true),
        home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar'),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1537511446984-935f663eb1f4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmVzc2lvbmFsJTIwbWFufGVufDB8fDB8fHww'),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Converter',
                          style: TextStyle(fontFamily: 'robotoR', fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WalletScreen()),
                          );
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0x4796F3FF),
                          ),
                          child: Icon(
                            Icons.account_balance_wallet_rounded,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 165,
                        height: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0x4797F3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 25,
                                top: 21,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'BTC',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '+ 7%',
                                      style: TextStyle(
                                          fontFamily: 'robotoR',
                                          fontSize: 14,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 15,
                              ),
                              child: Text(
                                '6.253',
                                style: TextStyle(
                                    fontFamily: 'robotoM', fontSize: 28),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 19,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(
                                      CupertinoIcons.bitcoin,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Bitcoin',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xB3DCCCFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 25,
                                top: 21,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'EUR',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '- 0.17%',
                                      style: TextStyle(
                                          fontFamily: 'robotoR',
                                          fontSize: 14,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 15,
                              ),
                              child: Text(
                                '90.2345',
                                style: TextStyle(
                                    fontFamily: 'robotoM', fontSize: 28),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 19,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(
                                      CupertinoIcons.money_euro,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black),
                                    padding: EdgeInsets.only(
                                      right: 2,
                                      top: 1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Euro',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 165,
                        height: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0x47BCC2C2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 25,
                                top: 21,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'GBP',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '- 0.16%',
                                      style: TextStyle(
                                          fontFamily: 'robotoR',
                                          fontSize: 14,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 15,
                              ),
                              child: Text(
                                '105.4127',
                                style: TextStyle(
                                    fontFamily: 'robotoM', fontSize: 28),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 19,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(
                                      CupertinoIcons.money_pound,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Pound',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0x34D9F57F),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 25,
                                top: 21,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'USD',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '+ 0.050%',
                                      style: TextStyle(
                                          fontFamily: 'robotoR',
                                          fontSize: 14,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 15,
                              ),
                              child: Text(
                                '83.1365',
                                style: TextStyle(
                                    fontFamily: 'robotoM', fontSize: 28),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 19,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(
                                      CupertinoIcons.money_dollar,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black),
                                    padding: EdgeInsets.only(
                                      right: 2,
                                      top: 1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Euro',
                                      style: TextStyle(
                                        fontFamily: 'robotoR',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  child: Text(
                    'Send',
                    style: TextStyle(
                      fontFamily: 'robotoR',
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '0.5366',
                          style: TextStyle(
                            fontFamily: 'robotoR',
                            fontSize: 21,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 25,
                              ),
                            ),
                            Container(
                              child: Text(
                                'BTC',
                                style: TextStyle(
                                  fontFamily: 'robotoR',
                                  fontSize: 21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    child: Icon(Icons.change_circle_outlined),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  child: Text(
                    'Get',
                    style: TextStyle(
                      fontFamily: 'robotoR',
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '29.356',
                          style: TextStyle(
                            fontFamily: 'robotoR',
                            fontSize: 21,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 25,
                              ),
                            ),
                            Container(
                              child: Text(
                                'USDT',
                                style: TextStyle(
                                  fontFamily: 'robotoR',
                                  fontSize: 21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Favorite',
                    style: TextStyle(fontFamily: 'robotoR', fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  //width: 385,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 344,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Icon(
                                CupertinoIcons.bitcoin,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            // Container(
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: <Widget>[
                            //       Container(
                            //         child: Text(
                            //           'Bitcoin',
                            //           style: TextStyle(
                            //             fontFamily: 'robotoR',
                            //             fontSize: 18,
                            //           ),
                            //         ),
                            //       ),
                            //       Container(
                            //         child: Text(
                            //           'BTC',
                            //           style: TextStyle(
                            //             fontFamily: 'robotoR',
                            //             fontSize: 14,
                            //             color: Colors.black54,
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "\$5.23658",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'robotoR',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "-23%",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'robotoR',
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
