import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNFT1 extends StatefulWidget {
  const BuyNFT1({Key? key}) : super(key: key);

  @override
  State<BuyNFT1> createState() => _BuyNFT1State();
}

class _BuyNFT1State extends State<BuyNFT1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Color(0xffa8fe39),
        ),
        title: Text(
          'Grand Ape',
          style: GoogleFonts.getFont(
            'Urbanist',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2022/02/18/16/09/ape-7020995__340.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Column(
                children: [
                  Text(
                    "Grand Ape",
                    style: GoogleFonts.getFont(
                      'Urbanist',
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    "68.92 ETH",
                    style: GoogleFonts.getFont(
                      'Urbanist',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                "Grand Ape NFT token collection is a\nnon-fungible token collection built\nonthe Ethereum blockchain. It includes cartoon ape profile pictures\ngenerated procedurally by an algorithm. On April 23, 2021,\nthe project went live with a pre-sale. ",
                textAlign: TextAlign.left,
                style: GoogleFonts.getFont(
                  'Urbanist',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
                  onPressed: () {},
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
    );
  }
}
