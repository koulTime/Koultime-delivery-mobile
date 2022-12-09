import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:koultime_delivery/view/pages/cart.dart';
import 'package:koultime_delivery/view/widgets/menu-card.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  var types = [
    {"name": "All", "selected": true},
    {"name": "Pizza", "selected": false},
    {"name": "Sandwich", "selected": false},
    {"name": "Pasta", "selected": false},
    {"name": "Drinks", "selected": false}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Cart();
            })),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: const Center(
          child: Text(
            "Kool Time Menu",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: RichText(
                  text: const TextSpan(
                      text: "Find your best",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Colors.black),
                      children: <TextSpan>[
                    TextSpan(
                        text: " Food ", style: TextStyle(color: Colors.red)),
                    TextSpan(text: "with us"),
                  ])),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    types.length,
                    (index) => Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Container(
                              margin: const EdgeInsets.all(8),
                              padding: EdgeInsets.only(right: 12, left: 12),
                              height: 23,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: types[index]["selected"] == true
                                    ? Colors.red
                                    : Colors.white,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    types[index]["name"].toString(),
                                    style: TextStyle(
                                        color: types[index]["selected"] == true
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => MenuCard(cart: false)))
          ],
        ),
      ),
    );
  }
}
