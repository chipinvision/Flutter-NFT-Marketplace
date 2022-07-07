/////////////////////////////////////////////////
//    Instagram: @invisionchip
//    GitHub: chipinvision
//    LIKE  -  SHARE  -  FOLLOW
/////////////////////////////////////////////////
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:nft_app/screens/home.dart';
import 'package:nft_app/screens/search.dart';
import 'package:nft_app/screens/trending.dart';
import 'package:nft_app/screens/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var selected = 0;

  final screens = const[
    HomeScreen(),
    SearchScreen(),
    TrendingScreen(),
    WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: screens[selected],
      bottomNavigationBar: GNav(
        curve: Curves.easeOutExpo,
        haptic: true,
        rippleColor: Colors.transparent,
        gap: 8,
        hoverColor: const Color(0xffedff08),
        activeColor: const Color(0xffa8fe39),
        color: const Color(0xffa8fe39),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        iconSize: 24,
        tabBackgroundColor: Colors.black,
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.search),
          GButton(icon: Icons.bolt),
          GButton(icon: Icons.wallet),
        ],
        selectedIndex: selected,
        onTabChange: (index){
          setState((){
            selected = index;
          });
        },
      ),
    );
  }
}
