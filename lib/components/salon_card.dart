import 'package:finalap/components/stars.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/screens/dynamic/salon_page.dart';
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
      width: width,
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      // height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromRGBO(255, 255, 255, 1),
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
      child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SalonPage(
              salon: salon,
            );
          }));
        },
        style: TextButton.styleFrom(
            textStyle: const TextStyle(
          color: DARK2,
        )),
        child: SizedBox(
          width: 500,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: ClipRRect(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(5),
                  ),
                  child: Image.asset(
                    "assets/images/baalofy_logo.png",
                    fit: BoxFit.fitHeight,
                  ),
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
                          color: DARK2,
                          fontFamily: BASICFONTFAMILY,
                          fontSize: HEADINGFONTSIZE3,
                          fontWeight: BOLD,
                        ),
                      ),
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
                                fontFamily: BASICFONTFAMILY,
                                fontSize: 15,
                                color: DARK2,
                                fontWeight: MEDIUM),
                          ),
                          Text(
                            "$waitTime min",
                            style: const TextStyle(
                              fontSize: 15,
                              color: DARK2,
                              fontFamily: BASICFONTFAMILY,
                              fontWeight: BOLD,
                            ),
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Distance :',
                                style: TextStyle(
                                  fontFamily: BASICFONTFAMILY,
                                  fontWeight: MEDIUM,
                                )),
                            TextSpan(
                                text: ' 324',
                                style: TextStyle(
                                  fontFamily: BASICFONTFAMILY,
                                  fontWeight: BOLD,
                                  fontSize: 15,
                                )),
                            TextSpan(
                              text: 'm',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
