import 'package:flutter/material.dart';
import 'package:smart_home/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
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
            color: Colors.black38,
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
                                    borderRadius: BorderRadius.circular(30.0),
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
          Positioned(
              top: size.height * 0.23,
              left: 7,
              child: Row(
                children: [
                  Card(
                    color: kCardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(color: kDarkColor, fontSize: 18,fontWeight: FontWeight.w600),
                          ),
                          Text("Temperature",style: TextStyle(color: kDarkColor, fontSize: 18,fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height:5),
                          Row(
                            children: [
                              
                              Text("23 °C",style: TextStyle(color: kDarkColor, fontSize: 40,fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
