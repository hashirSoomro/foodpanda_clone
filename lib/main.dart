import 'package:flutter/material.dart';
import 'package:foodpanda_clone/HeadingsText.dart';
import 'package:foodpanda_clone/circleIcon.dart';
import 'package:foodpanda_clone/cuisineList.dart';
import 'package:foodpanda_clone/drawerTile.dart';
import 'package:foodpanda_clone/foodDeliveryCard.dart';
import 'package:foodpanda_clone/otherHomeCard.dart';
import 'package:foodpanda_clone/pandaMartCard.dart';
import 'package:foodpanda_clone/pandamartList.dart';
import 'package:foodpanda_clone/restaurantSlider.dart';
import 'package:foodpanda_clone/searchField.dart';
import 'package:foodpanda_clone/shopsList.dart';
import 'package:foodpanda_clone/shopsSlide.dart';
import 'package:foodpanda_clone/starRow.dart';
import 'package:foodpanda_clone/textTile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodpanda_clone/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Panda',
      theme: ThemeData(
        primarySwatch: myColour,
      ),
      home: const MyHomePage(title: 'Food Panda'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shangrilla Tower B1/103",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            ),
            Text(
              "Karachi",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            )
          ],
        ),
        actions: [
          CircleIcon(
            img: 'assets/icons/heart.png',
            onPressed: () {},
          ),
          CircleIcon(
            img: 'assets/icons/cart.png',
            onPressed: () {},
          )
        ],
        backgroundColor: myColour[500],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        shape: const BeveledRectangleBorder(),
        backgroundColor: Colors.white,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: myColour[500]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Text(
                          "H",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: myColour,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    Text(
                      "Hashir Soomro",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/pandapay.jpg",
                              height: 20,
                              width: 70,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: primaryAccent[200],
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Rs. 0.00",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color: myColour,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Top up, check your balance and get exciting\noffers!",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              height: 1.2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.blueGrey,
                thickness: 0.1,
              ),
              drawerTile(
                  image: "assets/icons/pro.png",
                  text: "Become a pandapro",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/voucher.png",
                  text: "Vouchers & offers",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/heart(1).png",
                  text: "Favourites",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/order.png",
                  text: "Orders & reordering",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/user.png",
                  text: "View profile",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/location.png",
                  text: "Addresses",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/trophy.png",
                  text: "Panda rewards",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/question.png",
                  text: "Help center",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/building.png",
                  text: "Foodpanda for Business",
                  width: 20,
                  height: 20),
              drawerTile(
                  image: "assets/icons/gift.png",
                  text: "Invite friends",
                  width: 20,
                  height: 20),
              const Divider(
                color: Colors.blueGrey,
                thickness: 0.1,
              ),
              textTile(text: "Settings"),
              textTile(text: "Terms & Conditions / Privacy"),
              textTile(text: "Log out")
            ],
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 3.2),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(color: myColour[500]),
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                        right: 14,
                      ),
                      child: InkWell(
                        child: const SearchField(),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const FoodDeliveryCard(),
                              Column(
                                children: [
                                  const PandaMartCard(),
                                  OtherHomeCard(
                                      heading: "Shops",
                                      image: "assets/images/shirt.jpg",
                                      text: "Top Brands to\nyour door")
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OtherHomeCard(
                                  heading: "Pick-up",
                                  image: "assets/images/pickup.jpg",
                                  text: "Self-collect for\n50% off"),
                              OtherHomeCard(
                                  heading: "Dine-in",
                                  image: "assets/images/plate.jpg",
                                  text: "Go out to eat\nfor 25% off"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OtherHomeCard(
                                  heading: "Catering",
                                  image: "assets/images/dessert.jpg",
                                  text: "Plan events\nwith ease"),
                              OtherHomeCard(
                                  heading: "pandago",
                                  image: "assets/images/pandago.jpg",
                                  text: "Send parcels\nin a tap"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  HeadingsText(text: "Popular restaurants"),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 30,
                      itemBuilder: ((context, index) {
                        return const RestaurantSlider();
                      }),
                    ),
                  )),
                  HeadingsText(text: "Cuisines"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 6.0),
                        child: CuisineList()),
                  ),
                  HeadingsText(text: "Popular shops"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 2.0),
                        child: ShopsList()),
                  ),
                  HeadingsText(text: "Pick up at a restaurant near you"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.5,
                        image: AssetImage("assets/images/map.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin:
                              EdgeInsets.only(left: 15, top: 35, bottom: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 100,
                          width: 260,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/chuckles.jpg",
                                    height: 125,
                                    width: 258,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "CHUCKLES",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      StarRow()
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1.5km away . Pick up in 15 min",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  HeadingsText(text: "Your daily deals"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/sambhal.jpg"),
                                      fit: BoxFit.fitHeight)),
                              height: 150,
                              width: 100,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  HeadingsText(text: "Shops"),
                  const Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 2.0),
                        child: ShopsSlide()),
                  ),
                  HeadingsText(
                    text: "Pandamart",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 2.0),
                        child: pandamartSlide()),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
