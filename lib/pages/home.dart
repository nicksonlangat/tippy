import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippy/pages/detail.dart';

class Tippy extends StatelessWidget {
  const Tippy({super.key});

  @override
  Widget build(BuildContext context) {
    var weekdays = [
      {"date": "08", "day": "MON", "active": false},
      {"date": "09", "day": "TUE", "active": false},
      {"date": "10", "day": "WED", "active": true},
      {"date": "11", "day": "THU", "active": false},
      {"date": "12", "day": "FRI", "active": false},
      {"date": "13", "day": "SAT", "active": false},
      {"date": "14", "day": "SUN", "active": false}
    ];

    var dailyGames = [
      {
        "home_team": "Arsenal",
        "home_team_logo":
            "https://www.arsenal.com/themes/custom/arsenal_main/logo.svg",
        "away_team": "Manchester city",
        "away_team_logo": "https://www.mancity.com/dist/images/logos/crest.svg",
        "tip": "BTTS",
        "odds": "1.8",
        "outcome": "WIN",
        "results": "2-2",
        "time": "6:30 PM",
        "is_home_svg": true,
        "is_away_svg": true
      },
      {
        "home_team": "Chelsea",
        "home_team_logo":
            "https://img.chelseafc.com/image/upload/f_auto,c_pad,w_230,h_230,ar_1,q_auto:best/Site%20Chelsea%20Badges/Main_Website_Badge_-_Colour.png",
        "away_team": "Manchester united",
        "away_team_logo":
            "https://assets.manutd.com/AssetPicker/images/0/0/3/2/197240/Header-Logo1500994616801.png",
        "tip": "BTTS",
        "odds": "1.5",
        "outcome": "WIN",
        "results": "1-2",
        "time": "7:00 PM",
        "is_home_svg": false,
        "is_away_svg": false
      },
      {
        "home_team": "Liverpool",
        "home_team_logo": "https://www.liverpoolfc.com/liverpoolfc_crest.png",
        "away_team": "Totenham",
        "away_team_logo":
            "https://www.nufc.co.uk/media/26782/b7d2c84e-c07a-4ae0-8e8d-e22a774261cd.jpg",
        "tip": "BTTS",
        "odds": "1.8",
        "outcome": "WIN",
        "results": "3-2",
        "time": "8:30 PM",
        "is_home_svg": false,
        "is_away_svg": false
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      appBar: AppBar(
        backgroundColor: const Color(0xff101010),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              "assets/images/user.jpeg",
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nick Langat",
              style: GoogleFonts.inter(fontSize: 14, color: Colors.white),
            ),
            Text(
              "Welcome back",
              style: GoogleFonts.inter(fontSize: 12, color: Colors.white38),
            )
          ],
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
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weekdays.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 50,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: weekdays[index]["active"] as bool
                            ? const Color(0xffffffff)
                            : const Color(0xff171717)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          weekdays[index]["day"] as String,
                          style: GoogleFonts.inter(
                              color: weekdays[index]["active"] as bool
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 12),
                        ),
                        Text(
                          weekdays[index]["date"] as String,
                          style: GoogleFonts.inter(
                              color: weekdays[index]["active"] as bool
                                  ? Colors.red
                                  : Colors.white,
                              fontSize: 12),
                        )
                      ],
                    ),
                  );
                },
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              "assets/logos/epl.svg",
              height: 40,
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: dailyGames.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TippyDetail()),
                    );
                  },
                  child: _eventCard(dailyGames[index]));
            },
          )),
        ],
      ),
    );
  }

  Padding _eventCard(game) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: const Color(0xff171717),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "EPL",
                      style: GoogleFonts.inter(color: Colors.white),
                    ),
                    Text(
                      game["time"],
                      style: GoogleFonts.inter(color: Colors.white30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        game["is_home_svg"]
                            ? SvgPicture.network(
                                game["home_team_logo"],
                                height: 25,
                              )
                            : Image.network(
                                game["home_team_logo"],
                                height: 25,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          game["home_team"],
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "VS",
                      style: GoogleFonts.inter(color: Colors.white24),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        game["is_away_svg"]
                            ? SvgPicture.network(
                                game["away_team_logo"],
                                height: 25,
                              )
                            : Image.network(
                                game["away_team_logo"],
                                height: 25,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          game["away_team"],
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TIP",
                          style: GoogleFonts.inter(color: Colors.white30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff101010)),
                          child: Center(
                            child: Text(
                              game["tip"],
                              style: GoogleFonts.inter(color: Colors.white54),
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
                          style: GoogleFonts.inter(color: Colors.white30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff101010)),
                          child: Center(
                            child: Text(
                              game["odds"],
                              style: GoogleFonts.inter(color: Colors.white54),
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
                          style: GoogleFonts.inter(color: Colors.white30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff101010)),
                          child: Center(
                            child: Text(
                              game["results"] + " " + game["outcome"],
                              style: GoogleFonts.inter(
                                  color: game["outcome"] == "WIN"
                                      ? Colors.greenAccent
                                      : Colors.red),
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
        ));
  }
}
