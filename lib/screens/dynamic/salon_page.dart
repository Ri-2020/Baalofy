import 'package:finalap/screens/static/background.dart';
import 'package:finalap/services/salon_list/salon_card_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SalonPage extends StatelessWidget {
  final Salon? salon;
  const SalonPage({
    Key? key,
    required this.salon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        title: Text(salon!.salonName!),
        centerTitle: true,
      ),
      body: Background(
        child: Text(salon!.salonName!),
      ),
    );
  }
}
