import 'package:finalap/components/primary_button.dart';
import 'package:finalap/components/text_form_field.dart';
import 'package:finalap/constants.dart';
import 'package:finalap/routes.dart';
import 'package:finalap/screens/static/background.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class GetDetails extends StatefulWidget {
  const GetDetails({Key? key}) : super(key: key);

  @override
  State<GetDetails> createState() => _GetDetailsState();
}

class _GetDetailsState extends State<GetDetails> {
  final _name = TextEditingController();
  dynamic errorText;
  String dropdownValue = 'One';
  double _value = 10.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1 * size.width),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create ID!",
                style: TextStyle(
                  fontSize: HEADINGFONTSIZE1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormFieldStyled(
                controller: _name,
                lable: "Full Name",
                hint: "",
                errorText: errorText,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enter Age",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              SfSlider(
                value: _value,
                activeColor: Colors.black,
                inactiveColor: Colors.grey,
                showTicks: true,
                showLabels: true,
                interval: 10,
                enableTooltip: true,
                min: 0,
                max: 100,
                // minorTicksPerInterval: ,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
              PrimaryButton(
                  child: const Text(
                    "Continue",
                  ),
                  onPress: () {
                    bool len = _name.text.isEmpty;
                    if (len) {
                      errorText = "Enter the Full name";
                    } else {
                      errorText = null;
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          homePageRoute, (route) => false);
                    }
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
