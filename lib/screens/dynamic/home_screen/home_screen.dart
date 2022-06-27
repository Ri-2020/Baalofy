import 'dart:convert';
import 'dart:developer';

import 'package:finalap/components/salon_card.dart';
import 'package:finalap/constants.dart';
import 'package:http/http.dart' as http;
import 'package:finalap/services/salon_list/salon_card_model.dart';
import 'package:finalap/screens/static/background.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Salon> _salons = [];
  final List<SalonCard> _salonCards = [];

  Future<List<Salon>> fetchSalon() async {
    Uri requestUrl = Uri.parse("https://jsonkeeper.com/b/0XTW");
    String noImageUrl =
        "https://www.trendsetter.com/pub/media/catalog/product/placeholder/default/no_image_placeholder.jpg";

    print("in this");

    try {
      dynamic response = await http.get(requestUrl);
      if (response.statusCode == 200) {
        List<dynamic> values = [];
        values = json.decode(response.body);
        if (values.isNotEmpty) {
          _salons.clear();
          for (dynamic i in values) {
            Map<String, dynamic> map = i;
            _salons.add(
              Salon.fromJson(map),
            );
          }
        }
      }
      setState(() {
        _salons;
      });
      return _salons;
    } catch (err) {
      log(err.toString());
      return [
        Salon("nothings is fetched", 2, noImageUrl, "22:22"),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    for (Salon i in _salons) {
      _salonCards.add(
        SalonCard(salon: i),
      );
    }
    Size size = MediaQuery.of(context).size;
    dynamic width = size.width;
    return Background(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 0.05 * width,
          ),
          child: Column(
            children: [
              Container(
                width: 0.9 * width,
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                child: const Text(
                  "SALONS near you!",
                  style: TextStyle(
                    fontSize: HEADINGFONTSIZE1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: const CupertinoSearchTextField(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  children: _salonCards,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchSalon();
  }
}
