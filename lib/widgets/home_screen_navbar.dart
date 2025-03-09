import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../constants.dart';

class HomeScreenNavbar extends StatelessWidget {
  const HomeScreenNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: Svg(
                'assets/svg/icon-burger.svg',
                size: Size(
                  24,
                  24,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: const CircleAvatar(
            backgroundColor: kBlueColor,
            child: Icon(Icons.medical_services,color: Colors.white,),
          ),
        )
      ],
    );
  }
}
