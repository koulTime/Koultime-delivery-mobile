import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

import 'package:koultime_delivery/data/menu-item.dart';

class ItemService {
  Future<List<dynamic>> getItems() async {
    try {
      var url = Uri.parse(
          "http://34.201.41.26/menu-items?fbclid=IwAR2ofNwppY_jP5m0JHazAwJE1L_Qr1WYQdq4RU_JdlItoBgzQDh14YYIHOs");

      var response = await http.get(url);

      return jsonDecode(response.body);
    } catch (e) {
      print(e);
      return [];
    }
  }
}

class AddToCart extends GetxController {
  List<Item> lst = [];
  int cost = 0;
  add(Item menuItem) {
    lst.add(menuItem);
    cost += menuItem.price;
    update();
  }

  del(int index) {
    lst.removeAt(index);
    update();
  }
}
