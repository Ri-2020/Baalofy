import 'package:finalap/components/stars.dart';
import 'package:finalap/constants.dart';
import 'package:finalap/services/salon_list/salon_card_model.dart';
import 'package:flutter/material.dart';

@immutable
class SalonCard extends StatelessWidget {
  final Salon? salon;
  const SalonCard({
    Key? key,
    required this.salon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String waitTime = salon!.waitTime ?? "00:00";
    String salonName = salon!.salonName!;
    int? starCount = salon?.stars;
    Size size = MediaQuery.of(context).size;
    dynamic width = size.width;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      // height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
            spreadRadius: -15.0,
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
      ),
      child: GestureDetector(
        // onTap: () => print("tap"),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 0.3 * width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset("assets/images/baalofy_logo.png"),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(
                10,
              ),
              child: SizedBox(
                width: 0.45 * width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      salonName,
                      softWrap: false,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: HEADINGFONTSIZE2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // const int mycount =
                    Stars(
                      count: starCount,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Wait time :\t",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "$waitTime min",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
