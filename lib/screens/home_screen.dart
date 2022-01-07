
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_home/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  bool status = false;
  bool status1 = false;
  bool status2 = false;

  BarTouchData get barTouchData => BarTouchData(
        enabled: true,
      );

  FlTitlesData get titlesData => FlTitlesData(
        leftTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(showTitles: false)
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
        border: Border(
          bottom: BorderSide.none,
        ),
      );



  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 6, colors: [Colors.white24],width: 6)],
),
        BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 9, colors: [Colors.white],width: 6)],
),
BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 6, colors: [Colors.white24],width: 6)],
),
BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 8.5, colors: [Colors.white],width: 6)],
),
BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 3, colors: [Colors.white24],width: 6)],
),

BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 5, colors: [Colors.white],width: 6)],
),
BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 8, colors: [Colors.white24],width: 6)],
),

BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 6, colors: [Colors.white],width: 6)],
),
BarChartGroupData(
          x: 0,
          barRods: [ BarChartRodData( y: 4, colors: [Colors.white24],width: 6)],
),

 

      ];

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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.skip_previous,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                child: FloatingActionButton(
                                  backgroundColor: Colors.white30,
                                  child: Icon(
                                    Icons.pause,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    print("Cliked");
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.skip_next,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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

          Positioned(
            top: size.height * 0.82,
            left: 7,
            child: Container(
              child: Card(
                color: Colors.white12,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 99, horizontal:180),
                      child: SizedBox(height: 50,),
                ),
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BarChart(
                BarChartData(
                  barTouchData: barTouchData,
                  titlesData: titlesData,
                  borderData: borderData,
                  gridData: FlGridData(show: false),
                  barGroups: barGroups,
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 70,
                ),
              ),
            ),
          ),
          Positioned(
            height: size.height * 0.9,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
