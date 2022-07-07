import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Wallet',
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
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                 const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,left: 10.0,top: 30.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Current Wallet Value",
                            style: GoogleFonts.getFont(
                              'Urbanist',
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "45.78 ETH",
                            style: GoogleFonts.getFont(
                              'Urbanist',
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          FloatingActionButton(
                            onPressed: (){},
                            backgroundColor: const Color(0xffa8fe39),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top:5.0, bottom:5.0),
              child: Row(
                children: [
                  Text(
                    "Recently Purchased",
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
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
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
                                            "SELL",
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
                                            "SELL",
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
