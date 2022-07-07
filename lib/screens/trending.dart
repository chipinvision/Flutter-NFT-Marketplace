import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {

  final imgList = [
    'https://lh3.googleusercontent.com/UTHSx6-hnxQkoFIkz0RNS7QPDsnrb8UB205d8o3mugh-nZPcLb-g_OujLbvW6F5JJBCBtGqQVVDGETJp20hnVBw4Aimr7TvmBVdOzQ8=w600',
    'https://video-images.vice.com/_uncategorized/1645450404941-00002.png',
    'https://pbs.twimg.com/profile_images/1434362609311141891/qtUU72jY_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1457279447174811651/1ZaKMQpX_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1409528097020551173/H-XyTjUm_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1370055258555232260/ap6pLKS2_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1506413253093642240/KteckZNy_400x400.jpg',
  ];

  final imgName = [
    'Travis Scott',
    'Amitabh Bachchan',
    'Mumble Rapperz',
    'Faceless Punk #4',
    'Astro Punk',
    'Crypto Karens',
    'Monster Punks',
  ];

  final imgRate = [
    '194.36 ETH',
    '98.63 ETH',
    '113.51 ETH',
    '86.11 ETH',
    '103.79 ETH',
    '33.85 ETH',
    '77.90 ETH',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Trending',
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
      body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
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
                                  imgList[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0, right:5.0, top:3.0 ,bottom:3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              imgName[index],
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
                              imgRate[index],
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
                      const SizedBox(height:5),
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
              );
            }
         ),
      ),
    );
  }
}
