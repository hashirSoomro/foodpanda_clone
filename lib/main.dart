import 'package:flutter/material.dart';
import 'package:foodpanda_clone/HeadingsText.dart';
import 'package:foodpanda_clone/circleIcon.dart';
import 'package:foodpanda_clone/drawerTile.dart';
import 'package:foodpanda_clone/foodDeliveryCard.dart';
import 'package:foodpanda_clone/otherHomeCard.dart';
import 'package:foodpanda_clone/pandaMartCard.dart';
import 'package:foodpanda_clone/searchField.dart';
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
  List cuisineImages = [
    "assets/images/pizza.jfif",
    "assets/images/burgers.jfif",
    "assets/images/shawarma.jfif",
    "assets/images/FastFood.jfif",
    "assets/images/parathas.jfif",
    "assets/images/broast.jfif",
    "assets/images/bbq.jfif",
    "assets/images/biryani.jfif",
    "assets/images/ice cream.jfif",
    "assets/images/pasta.jfif",
    "assets/images/chinese.jfif",
    "assets/images/samosa.jfif",
    "assets/images/pulao.jfif",
    "assets/images/nihari.jfif",
  ];
  List cuisines = [
    "Pizza",
    "Burgers",
    "Shawarma",
    "Fast Food",
    "Paratha",
    "Broast",
    "BBQ",
    "Biryani",
    "Ice Cream",
    "Pasta",
    "Chinese",
    "Samosa",
    "Pulao",
    "Nihari"
  ];
  List shopsImages = [
    "assets/images/be.png",
    "assets/images/rahima.jfif",
    "assets/images/pandamart-johar.jfif"
  ];
  List shops = ["Be Mart", "Rahima General\nStore", "Pandamart -\nJohar"];
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
                textStyle: TextStyle(
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
        shape: BeveledRectangleBorder(),
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: myColour[500]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
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
                  SizedBox(
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
                      SizedBox(
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
            Divider(
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
            Divider(
              color: Colors.blueGrey,
              thickness: 0.1,
            ),
            textTile(text: "Settings"),
            textTile(text: "Terms & Conditions / Privacy"),
            textTile(text: "Log out")
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 3),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(color: myColour[500]),
                  height: 60,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 14, bottom: 14),
                    child: InkWell(
                      child: SearchField(),
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
                            FoodDeliveryCard(),
                            Column(
                              children: [
                                PandaMartCard(),
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
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: ((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 150,
                        margin: const EdgeInsets.only(right: 12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                height: 104,
                                width: 210,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/burger.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.transparent),
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 210,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "KFC - Mega Mall",
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/star.png"),
                                              height: 10,
                                              width: 10,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "4.4",
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  height: 1.2,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "(5000+)",
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
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$\$ . PKR 249 minimum . Fast Food",
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
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/clock.png"),
                                          height: 10,
                                          width: 10,
                                        ),
                                        Text(
                                          " 20 min . ",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                              height: 1.2,
                                            ),
                                          ),
                                        ),
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/bike.png"),
                                          height: 10,
                                          width: 10,
                                        ),
                                        Text(
                                          " 50 PKR",
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
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                )),
                HeadingsText(text: "Cuisines"),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 6, right: 6),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage(cuisineImages[index]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      cuisines[index],
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          height: 1.2,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 6, right: 6),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              cuisineImages[index + 7]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      cuisines[index + 7],
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          height: 1.2,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        );
                      }),
                    ),
                  ),
                ),
                HeadingsText(text: "Popular shops"),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 2.0, bottom: 60),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(shopsImages[index]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      shops[index],
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          height: 1.2,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "35 mins",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                          height: 1.2,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                HeadingsText(text: "Pick up at a restaurant near you"),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black
                        .withOpacity(0.4), // Adjust the opacity value as needed
                    BlendMode.dstATop,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
