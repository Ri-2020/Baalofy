// imports that are from flutter and dart
import 'dart:convert';
import 'dart:developer';
import 'package:finalap/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

// all pages and classes created by us
import 'package:finalap/components/salon_card.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/services/salon_list/salon_card_model.dart';
import 'package:finalap/screens/static/background.dart';

// [_salonCardsData] is the list of data of the salon card

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Salon> _salonCardsData = [];
  final List<Widget> _salonCardList = [];
  bool flag = true;

  @override
  void initState() {
    super.initState();
    fetchSalon();
  }

  Future<List<Salon>> fetchSalon() async {
    flag = true;
    Uri requestUrl = Uri.parse("https://jsonkeeper.com/b/BN50");
    // String noImageUrl =
    // "https://www.trendsetter.com/pub/media/catalog/product/placeholder/default/no_image_placeholder.jpg";
    setState(() {
      _salonCardList.clear();
      _salonCardList.add(
        const CircularProgressIndicator(),
      );
    });
    developer.log("in this"); // to check that this fucntion is working

    try {
      dynamic response = await http.get(requestUrl);
      _salonCardList.clear();
      if (response.statusCode == 200) {
        List<dynamic> values = [];
        values = json.decode(response.body);
        if (values.isNotEmpty) {
          _salonCardsData.clear();
          for (dynamic i in values) {
            Map<String, dynamic> map = i;
            _salonCardsData.add(
              Salon.fromJson(map),
            );
          }
        }
      }
      setState(() {
        _salonCardsData;
      });
      return _salonCardsData;
    } catch (err) {
      log(err.toString());
      _salonCardsData.clear();
      flag = false;
      setState(() {
        _salonCardsData;
      });
      return _salonCardsData;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_salonCardsData.isEmpty && !flag) {
      _salonCardList.clear();
      _salonCardList.add(
        const Text("Some Error Occured"),
      );
      _salonCardList.add(
        PrimaryButton(
          child: const Text("Retry"),
          onPress: () {
            fetchSalon();
          },
        ),
      );
    } else if (_salonCardsData.isEmpty && flag) {
    } else {
      _salonCardList.clear();
      for (Salon i in _salonCardsData) {
        _salonCardList.add(
          SalonCard(salon: i),
        );
      }
    }

    Size size = MediaQuery.of(context).size;
    dynamic width = size.width;
    return Background(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 0.05 * width,
            right: 0.05 * width,
            bottom: 85,
            top: 15,
          ),
          child: Column(
            children: [
              Container(
                width: 0.9 * width,
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                child: const Text(
                  "SALONS near you",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: HEADINGFONTSIZE1,
                    fontWeight: EXTRABOLD,
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
                  children: _salonCardList,
                ),
              ),
              const SizedBox(
                child: Text(
                  "Save your time above this line.",
                  style: TextStyle(
                    fontFamily: BASICFONTFAMILY,
                    color: Color.fromARGB(255, 96, 96, 96),
                    fontWeight: LIGHT,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
