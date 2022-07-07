import 'package:finalap/components/primary_button.dart';
import 'package:finalap/components/stars.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/screens/static/background.dart';
import 'package:finalap/services/salon_list/salon_card_model.dart';
import 'package:flutter/material.dart';

class SalonPage extends StatelessWidget {
  final Salon? salon;
  const SalonPage({
    Key? key,
    required this.salon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    dynamic width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        title: Text(salon!.salonName!),
        // centerTitle: true,
      ),
      body: Stack(
        children: [
          Background(
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    "assets/images/salonpageimagesample.png",
                    width: width,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width,
                        child: Text(
                          salon!.salonName!,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: HEADINGFONTSIZE1,
                            fontFamily: BASICFONTFAMILY,
                            fontWeight: BOLD,
                          ),
                        ),
                      ),
                      Stars(count: salon!.stars),
                      const SizedBox(height: 20),
                      const Text(
                        "the Salon, an annual exhibition of works of art by living artists, originally held at the Salon d'Apollon: it became, during the 19th century, the focal point of artistic controversy and was identified with academicism and official hostility to progress in art.",
                        maxLines: null,
                        style: TextStyle(
                          fontFamily: BASICFONTFAMILY,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            width: width,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 25,
                    spreadRadius: -15.0,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                ],
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              // color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Wait time\t",
                        style: TextStyle(
                          fontFamily: BASICFONTFAMILY,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "${salon!.waitTime}",
                        style: const TextStyle(
                          fontFamily: BASICFONTFAMILY,
                          fontSize: 20,
                          fontWeight: BOLD,
                        ),
                      ),
                    ],
                  ),
                  PrimaryButton(
                    onPress: () {},
                    child: const Text("Book Slot"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
