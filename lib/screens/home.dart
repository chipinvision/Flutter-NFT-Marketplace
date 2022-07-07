import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'package:nft_app/screens/buynft_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Marketplace',
          style: GoogleFonts.getFont(
            'Urbanist',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [Color(0xffa8fe39), Color(0xffedff08)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://cryptologos.cc/logos/ethereum-eth-logo.png?v=022',
                      ),
                    ),
                    const SizedBox(width: 3,),
                    Text(
                      '45.78 ETH',
                      style: GoogleFonts.getFont(
                        'Urbanist',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top:5.0, bottom:5.0),
              child: Row(
                children: [
                  Text(
                    "Live Auctions",
                    style: GoogleFonts.getFont(
                      'Urbanist',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 233,
                        height: 356,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 233,
                              height: 356,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(left: 7, right: 12, top: 16, bottom: 8, ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: SizedBox(
                                          height: 184,
                                          width: MediaQuery.of(context).size.width,
                                          child: Image.network(
                                            'https://cdn.pixabay.com/photo/2022/02/18/16/09/ape-7020995__340.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Column(
                                    children: [
                                      Text(
                                        "Grand Ape",
                                        style: GoogleFonts.getFont(
                                          'Urbanist',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text(
                                        "68.92 ETH",
                                        style: GoogleFonts.getFont(
                                          'Urbanist',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    width: 214,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      gradient: const LinearGradient(
                                        colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    padding: const EdgeInsets.only(left: 17, right: 16, ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:[
                                        SizedBox(
                                          width: 181,
                                          height: 41,
                                          child: Center(
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const BuyNFT1()));
                                              },
                                              child: Text(
                                                "BUY",
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'Urbanist',
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 233,
                        height: 356,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 233,
                              height: 356,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(left: 7, right: 12, top: 16, bottom: 8, ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: SizedBox(
                                          height: 184,
                                          width: MediaQuery.of(context).size.width,
                                          child: Image.network(
                                            'https://cdn.pixabay.com/photo/2022/01/17/17/20/bored-6945309__340.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Column(
                                    children: [
                                      Text(
                                        "Bored Ape",
                                        style: GoogleFonts.getFont(
                                          'Urbanist',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text(
                                        "43.20 ETH",
                                        style: GoogleFonts.getFont(
                                          'Urbanist',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    width: 214,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      gradient: const LinearGradient(
                                        colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    padding: const EdgeInsets.only(left: 16, right: 16, ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:[
                                        SizedBox(
                                          width: 181,
                                          height: 41,
                                          child: Center(
                                            child: TextButton(
                                              onPressed: () {
                                                //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const BuyNFT1()));
                                              },
                                              child: Text(
                                                "BUY",
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'Urbanist',
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 233,
                        height: 356,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 233,
                              height: 356,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(left: 7, right: 12, top: 16, bottom: 8, ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: SizedBox(
                                          height: 184,
                                          width: MediaQuery.of(context).size.width,
                                          child: Image.network(
                                            'https://lh3.googleusercontent.com/UTHSx6-hnxQkoFIkz0RNS7QPDsnrb8UB205d8o3mugh-nZPcLb-g_OujLbvW6F5JJBCBtGqQVVDGETJp20hnVBw4Aimr7TvmBVdOzQ8=w600',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Column(
                                    children: [
                                      Text(
                                        "Travis Scott",
                                        style: GoogleFonts.getFont(
                                          'Urbanist',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text(
                                        "194.36 ETH",
                                        style: GoogleFonts.getFont(
                                          'Urbanist',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    width: 214,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      gradient: const LinearGradient(
                                        colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    padding: const EdgeInsets.only(left: 17, right: 16, ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:[
                                        SizedBox(
                                          width: 181,
                                          height: 31,
                                          child: Center(
                                            child: Text(
                                              "BUY",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.getFont(
                                                'Urbanist',
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top:5.0, bottom:5.0),
              child: Row(
                children: [
                  Text(
                    "Top Sellers",
                    style: GoogleFonts.getFont(
                      'Urbanist',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Chip(
                      labelPadding:  EdgeInsets.all(5),
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2022/02/18/16/09/ape-7020995__340.png'),
                      ),
                      backgroundColor: Color(0xffedff08),
                      label: Text('Ape Gang'),
                    ),
                    SizedBox(width:5),
                    Chip(
                      labelPadding:  EdgeInsets.all(5),
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1437546694112055297/jhen1X3R_400x400.jpg'),
                      ),
                      backgroundColor: Color(0xffedff08),
                      label: Text('Rap Punk'),
                    ),
                    SizedBox(width:5),
                    Chip(
                      labelPadding:  EdgeInsets.all(5),
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage('https://www.reuters.com/resizer/m2Eze1n30GaqsQDKILr2Ukc9304=/631x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/7GBCHQUCEROJDPEVYQW7XG7VAE.jpg'),
                      ),
                      backgroundColor: Color(0xffedff08),
                      label: Text('Bored Ape'),
                    ),
                    SizedBox(width:5),
                    Chip(
                      labelPadding:  EdgeInsets.all(5),
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1457279447174811651/1ZaKMQpX_400x400.jpg'),
                      ),
                      backgroundColor: Color(0xffedff08),
                      label: Text('Faceless Punks'),
                    ),
                    SizedBox(width:5),
                    Chip(
                      labelPadding:  EdgeInsets.all(5),
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage('https://pbs.twimg.com/media/FCEwMPbXMAA4VJJ?format=jpg&name=medium'),
                      ),
                      backgroundColor: Color(0xffedff08),
                      label: Text('Mumble Rapperz'),
                    ),
                    SizedBox(width:5),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top:5.0, bottom:5.0),
              child: Row(
                children: [
                  Text(
                    "New Collections",
                    style: GoogleFonts.getFont(
                      'Urbanist',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5.0, top:5.0, bottom:5.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 0.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width,
                                      child: Image.network(
                                        'https://video-images.vice.com/_uncategorized/1645450404941-00002.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Amitabh Bachchan",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width:3),
                                  Text(
                                    "98.63 ETH",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height:2),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:5.0),
                              child: Container(
                                width: 300,
                                height: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                padding: const EdgeInsets.only(left: 17, right: 16, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(
                                      width: 181,
                                      height: 31,
                                      child: Center(
                                        child: Text(
                                          "BUY",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Urbanist',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5.0, top:5.0, bottom:5.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 0.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width,
                                      child: Image.network(
                                        'https://www.ledgerinsights.com/wp-content/uploads/2021/12/adidas-nft-bored-ape-810x524.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Adidas Bored Ape",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width:3),
                                  Text(
                                    "51.77 ETH",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height:2),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:5.0),
                              child: Container(
                                width: 300,
                                height: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                padding: const EdgeInsets.only(left: 17, right: 16, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(
                                      width: 181,
                                      height: 31,
                                      child: Center(
                                        child: Text(
                                          "BUY",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Urbanist',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5.0, top:5.0, bottom:5.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 0.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width,
                                      child: Image.network(
                                        'https://lh4.googleusercontent.com/qR-C8B03Ebn4JFsQ536Oe7_Xt5y8m6qXP1j9py-hGS5VoT6q6WUGlFlDp8SQKAVowpO6j6zJW3HTcDaCcFJB9iUnABIhdFtsyAByx_tVVVqgnXhqaVoLTCT72vpCZ7XE4uWLxjI_',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Yatch Club Ape",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width:3),
                                  Text(
                                    "74.28 ETH",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height:2),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:5.0),
                              child: Container(
                                width: 300,
                                height: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                padding: const EdgeInsets.only(left: 17, right: 16, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(
                                      width: 181,
                                      height: 31,
                                      child: Center(
                                        child: Text(
                                          "BUY",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Urbanist',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, right:5.0, top:5.0, bottom:5.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 0.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width,
                                      child: Image.network(
                                        'https://pbs.twimg.com/profile_images/1434362609311141891/qtUU72jY_400x400.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mumble Rapperz",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width:3),
                                  Text(
                                    "113.51 ETH",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.getFont(
                                      'Urbanist',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height:2),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0, right:5.0, bottom:5.0),
                              child: Container(
                                width: 300,
                                height: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    colors: [Color(0xffa8fe39), Color(0xffedff08)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                padding: const EdgeInsets.only(left: 17, right: 16, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(
                                      width: 181,
                                      height: 31,
                                      child: Center(
                                        child: Text(
                                          "BUY",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Urbanist',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
