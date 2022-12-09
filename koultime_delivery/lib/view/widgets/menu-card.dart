import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuCard extends StatefulWidget {
  final bool cart;
  const MenuCard({super.key, required this.cart});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 105,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(
                50.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          /* boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, spreadRadius: 1, blurRadius: 15)
          ],*/
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 72,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "TITLE",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey.shade300,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey.shade300,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "50.00 Dt",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  widget.cart
                      ? ElevatedButton(
                          onPressed: (() {}),
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.red),
                          ),
                          child: const Text("Remove"))
                      : ElevatedButton(
                          onPressed: (() {}),
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.red),
                          ),
                          child: const Text("Add to cart"))
                ]),
          ]),
    );
  }
}
