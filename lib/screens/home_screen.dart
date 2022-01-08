import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_home/utils/constants.dart';
import '../utils/bars.dart';
import 'package:just_audio/just_audio.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AudioPlayer? _audioPlayer;
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer!
        .setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.uri(Uri.parse(
          "https://www2.cs.uic.edu/~i101/SoundFiles/PinkPanther60.wav")),
      AudioSource.uri(Uri.parse(
          "https://www2.cs.uic.edu/~i101/SoundFiles/ImperialMarch60.wav")),
    ]))
        .catchError((error) {
      print("An error occured $error");
    });
  }

  @override
  void dispose() {
    _audioPlayer!.stop();
    _audioPlayer!.dispose();
    super.dispose();
  }

  bool isLoading = false;
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  bool isPlaying = false;

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black45,
          ),

          Positioned(
            top: size.height * 0.08,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                    Text(
                      "Chris Cooper",
                      style: TextStyle(
                          color: kCardColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 28),
                    )
                  ],
                ),
                SizedBox(width: size.width * 0.28),
                ElevatedButton(
                    style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all(Colors.white70),
                        elevation: MaterialStateProperty.all(1),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.white54))),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff898380))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.2,
            left: 12,
            child: Text(
              "Living Room",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),

          //  Home Temp and Plug Wall Cards
          Positioned(
            top: size.height * 0.23,
            left: 7,
            child: Row(
              children: [
                Card(
                  elevation: 2,
                  color: kCardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              color: kDarkColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Temperature",
                          style: TextStyle(
                              color: kDarkColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "23",
                              style: TextStyle(
                                  color: kDarkColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              " °C",
                              style: TextStyle(
                                  color: kDarkColor,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        FlutterSwitch(
                          width: 55.0,
                          height: 30.0,
                          toggleSize: 24.0,
                          activeColor: kChipColor,
                          inactiveColor: kGreyColor,
                          value: status,
                          borderRadius: 30.0,
                          padding: 0.5,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.08,
                ),
                // Plug wall card
                Container(
                  child: Card(
                    color: Colors.white30,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "   Plug Wall ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\u2022 MacBook Pro",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\u2022 HomePod",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\u2022 PlayStation 5",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 10),
                          FlutterSwitch(
                            width: 55.0,
                            height: 30.0,
                            toggleSize: 24.0,
                            activeColor: Colors.white54,
                            inactiveColor: Colors.white24,
                            value: status1,
                            borderRadius: 30.0,
                            padding: 0.7,
                            onToggle: (val) {
                              setState(() {
                                status1 = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

//  play and smart tv cards

          Positioned(
            top: size.height * 0.5,
            left: 7,
            child: Row(
              children: [
                Container(
                  child: Card(
                    color: Colors.white24,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1505282722405-413748d3de7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " Midnight Love",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    " Girl in red",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _audioPlayer!.hasPrevious
                                        ? _audioPlayer!.seekToPrevious()
                                        : null;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.skip_previous,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: FloatingActionButton(
                                  backgroundColor: Colors.white30,
                                  child: Icon(
                                    isPlaying ? Icons.pause : Icons.play_arrow,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (isPlaying == false) {
                                        _audioPlayer!.play();
                                        isPlaying = true;
                                      } else if (isPlaying == true) {
                                        _audioPlayer!.stop();
                                        isPlaying = false;
                                      }
                                    });
                                  },
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _audioPlayer!.hasNext
                                        ? _audioPlayer!.seekToNext()
                                        : null;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.skip_next,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Smart TV Card
                Container(
                  child: Card(
                    color: Colors.white30,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "   Smart TV  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\u2022 Samsung UA55 4AC",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 8),
                          SizedBox(height: 10),
                          FlutterSwitch(
                            width: 55.0,
                            height: 30.0,
                            toggleSize: 24.0,
                            activeColor: Colors.white54,
                            inactiveColor: Colors.white24,
                            value: status2,
                            borderRadius: 30.0,
                            padding: 0.5,
                            onToggle: (val) {
                              setState(() {
                                status2 = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
// statistics and month
          Positioned(
              height: size.height * 1.46,
              left: 20,
              child: Row(
                children: [
                  Text(
                    "Statistics",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: size.height * 0.2,
                  ),
                  Text(
                    "Month",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ],
              )),
//Electricity usage
          Positioned(
            top: size.height * 0.77,
            left: 10,
            child: Container(
              child: Card(
                color: Colors.white12,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 99, horizontal: 182),
                ),
              ),
            ),
          ),
          Positioned(
              top: size.height * 0.8,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Electricity Usage",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Bars(
                        height: 20,
                        color: Colors.white,
                      ),
                      Bars(
                        height: 50,
                        color: Colors.white24,
                      ),
                      Bars(
                        height: 35,
                        color: Colors.white,
                      ),
                      Bars(
                        height: 25,
                        color: Colors.white24,
                      ),
                      Bars(
                        height: 12,
                        color: Colors.white,
                      ),
                      Bars(
                        height: 30,
                        color: Colors.white24,
                      ),
                      Bars(
                        height: 50,
                        color: Colors.white,
                      ),
                      Bars(
                        height: 20,
                        color: Colors.white24,
                      ),
                      Bars(
                        height: 30,
                        color: Colors.white,
                      ),
                      Bars(
                        height: 20,
                        color: Colors.white24,
                      ),
                      Bars(
                        height: 40,
                        color: Colors.white,
                      ),
                      Bars(
                        height: 20,
                        color: Colors.white24,
                      ),
                      Bars(
                        height: 28,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
