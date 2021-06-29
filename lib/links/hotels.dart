import 'package:flutter/material.dart';
import 'package:travelapp/models/destinations_model.dart';
import 'package:travelapp/models/hotels_model.dart';

class MyHotels extends StatefulWidget {
  const MyHotels({Key? key}) : super(key: key);

  @override
  _MyHotelsState createState() => _MyHotelsState();
}

class _MyHotelsState extends State<MyHotels>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animationHotels;
  late Animation _animationOpacity;

  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _animationController.forward();
    _animationHotels =
        Tween<double>(begin: 200, end: 0).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });

    _animationOpacity =
        Tween<double>(begin: 0, end: 1).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _animationOpacity.value,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: _animationHotels.value,
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: Hotels.hotelsLists.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.blue,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.6,
                                // margin: EdgeInsets.symmetric(horizontal: 20.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 20,
                                          spreadRadius: 3,
                                          offset: Offset(0, 5)),
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(
                                        Hotels.hotelsLists[index].hotelImg),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                //color: Colors.yellow,
                                width: MediaQuery.of(context).size.width * 0.25,
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Hotels.hotelsLists[index].hotelName,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.036,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Text(
                                        Hotels.hotelsLists[index].hotelLocation,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.034,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFFA7A7A7)),
                                      ),
                                    ),
                                    Text(
                                      Hotels.hotelsLists[index].hotelPrice,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.035,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
