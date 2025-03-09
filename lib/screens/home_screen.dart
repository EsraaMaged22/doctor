import 'package:flutter/material.dart';
import 'package:mydoctor_app/screens/students_screen.dart';
import 'package:mydoctor_app/widgets/custom_button.dart';

import '../constants.dart';
import '../widgets/doctor_app_grid_menu.dart';
import '../widgets/home_screen_navbar.dart';
import '../widgets/top_doctors_list.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ Padding(
                padding: const EdgeInsets.only(left: 90),
                child: CustomButton(text: 'Students names', onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentsScreen(),
                    ),
                  );
                }),
              ),
                const HomeScreenNavbar(),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displayLarge,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Find ',
                      ),
                      TextSpan(
                        text: 'your doctor',
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: kGreyColor900,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 16,
                    bottom: 5,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kGreyColor500,
                  ),
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: kBlackColor900,
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: kBlackColor900,
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        maxHeight: 24,
                      ),
                      hintText: 'Search doctor, medicines etc',
                      hintStyle: Theme.of(context).textTheme.headlineSmall,
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const DoctorAppGridMenu(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kBlueColor,
                          ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),

                const TopDoctorsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
