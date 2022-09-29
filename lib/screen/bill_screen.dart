import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/buttombar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_application_1/style/iconstyle.dart';
import 'package:flutter_application_1/style/textstyle.dart';

class billpage extends StatefulWidget {
  const billpage({Key? key}) : super(key: key);

  @override
  State<billpage> createState() => _billpageState();
}

class _billpageState extends State<billpage> {
  List<Widget> _listitem = [
    Icon(Icons.home),
    Icon(Icons.favorite_outline),
    Icon(
      Icons.shopping_bag_rounded,
      size: 35,
      color: Colors.white,
    ),
    Icon(Icons.notifications_none),
    Icon(Icons.person_outline),
  ];
  int idemcunt = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Color.fromARGB(255, 255, 94, 0),
        items: _listitem,
        index: idemcunt,
        backgroundColor: Color(0xFFF5F5F7),
        // height: 60,
      ),

      backgroundColor: Color(0xFFF5F5F7),

      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: icons.iconstyle,
        elevation: 0.00,
        // backgroundColor: Color(0xFFF5F5F7),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fontstyles.billpagetext,
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150.00,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 39, 1, 255)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(15.00),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("21 march, 2021"),
                    Text("order details:"),
                    billmanue(
                      manutext: "Chicken burger",
                      totalprice: "\$250.50",
                    ),
                    billmanue(
                      manutext: "Extra sauce",
                      totalprice: "\$40.50",
                    ),
                    billmanue(
                      manutext: "VAT",
                      totalprice: "\$60.50",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.00),
                      child: Divider(
                        thickness: 3,
                      ),
                    ),
                    billmanue(
                      manutext: "Total",
                      totalprice: "\$350.50",
                    )
                  ],
                ),
              ),
            ),
            containeradderss(
                addres: "45 kemal Ataturk Ave, Dhaka 1212",
                deliveryto: 'Delivered to'),
            containeradderss(
                addres: "Cash on delivery", deliveryto: 'payment Method'),
            SizedBox(
              height: 15.00,
            )
          ],
        ),
      ),
    );
  }
}

class billmanue extends StatelessWidget {
  const billmanue({required this.manutext, required this.totalprice});

  final String manutext;
  final String totalprice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(manutext),
        Text(totalprice),
      ],
    );
  }
}

class containeradderss extends StatelessWidget {
  const containeradderss({required this.addres, required this.deliveryto});
  final String deliveryto;
  final String addres;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(deliveryto),
        Container(
          padding: EdgeInsets.only(top: 20.00, left: 10.00),
          width: MediaQuery.of(context).size.width,
          height: 60.00,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.00),
            color: Colors.white,
          ),
          child: Text(addres),
        ),
      ],
    );
  }
}
