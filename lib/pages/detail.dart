import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TippyDetail extends StatelessWidget {
  const TippyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      appBar: AppBar(
        backgroundColor: const Color(0xff101010),
        foregroundColor: Colors.white,
        title: Text(
          "PRE MATCH ANALYSIS",
          style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: const Color(0xff171717),
              radius: 20,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
                          height: 60,
                        ),
                        Column(
                          children: [
                            Text(
                              "VS",
                              style: GoogleFonts.inter(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "6:45 PM",
                              style: GoogleFonts.inter(
                                  fontSize: 12, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Old Traford",
                              style: GoogleFonts.inter(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                        SvgPicture.network(
                          "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
                          height: 60,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TIP",
                              style: GoogleFonts.inter(color: Colors.white54),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black45),
                              child: Center(
                                child: Text(
                                  "BTTS",
                                  style:
                                      GoogleFonts.inter(color: Colors.white54),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ODD",
                              style: GoogleFonts.inter(color: Colors.white54),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black45),
                              child: Center(
                                child: Text(
                                  "1.65",
                                  style:
                                      GoogleFonts.inter(color: Colors.white54),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RESULT",
                              style: GoogleFonts.inter(color: Colors.white54),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black45),
                              child: Center(
                                child: Text(
                                  "2-1 WIN",
                                  style:
                                      GoogleFonts.inter(color: Colors.white54),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: const Color(0xff171717),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MANCHESTER LAST 5",
                      style: GoogleFonts.inter(color: Colors.white38),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "D",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-2",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "L",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-3",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ARSENAL LAST 5",
                      style: GoogleFonts.inter(color: Colors.white38),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "W",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "2-1",
                                style: GoogleFonts.inter(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xff171717),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LAST 5 H2H",
                      style: GoogleFonts.inter(color: Colors.white38),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.network(
                                "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Arsenal",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                          Text(
                            "1 - 2",
                            style: GoogleFonts.inter(color: Colors.white38),
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Manchester united",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.network(
                                "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Arsenal",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                          Text(
                            "1 - 2",
                            style: GoogleFonts.inter(color: Colors.white38),
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Manchester united",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.network(
                                "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Arsenal",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                          Text(
                            "1 - 2",
                            style: GoogleFonts.inter(color: Colors.white38),
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Manchester united",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.network(
                                "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Arsenal",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                          Text(
                            "1 - 2",
                            style: GoogleFonts.inter(color: Colors.white38),
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Manchester united",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.network(
                                "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Arsenal",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                          Text(
                            "1 - 2",
                            style: GoogleFonts.inter(color: Colors.white38),
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Manchester united",
                                style: GoogleFonts.inter(color: Colors.white38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
