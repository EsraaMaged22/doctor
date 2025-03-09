import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../models/doctor.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Doctor;

    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             alignment: Alignment.topCenter,
             height: MediaQuery.of(context).size.height * 0.5,
             decoration: BoxDecoration(
               color: kGreyColor600,
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage(
                   'assets/images/${args.doctorPicture}',
                 ),
               ),
             ),
             child: SafeArea(
               child: Padding(
                 padding: const EdgeInsets.symmetric(
                   horizontal: 30,
                 ),
                 child: Row(
                   children: [
                     GestureDetector(
                       onTap: () {
                         Navigator.pop(context);
                       },
                       child: Container(
                         height: 24,
                         width: 24,
                         decoration:  const BoxDecoration(
                           image: DecorationImage(
                             image: Svg('assets/svg/icon-back.svg'),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           SizedBox(
             height: MediaQuery.of(context).size.height * 0.5,
             child: Padding(
               padding: const EdgeInsets.all(16),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(
                     height: 24,
                   ),
                   Hero(
                     tag: args.doctorName,
                     child: Material(
                       color: Colors.transparent,
                       child: Text(
                         args.doctorName,
                         style: Theme.of(context).textTheme.displayMedium,
                       ),
                     ),
                   ),
                   const SizedBox(
                     height: 8,
                   ),
                   Text(
                     '${args.doctorSpecialty} • ${args.doctorHospital} ',
                     style: Theme.of(context).textTheme.headlineSmall,
                   ),
                   const SizedBox(
                     height: 16,
                   ),
                   Text(
                     '${args.doctorName} • ${args.doctorDescription} ',
                     overflow: TextOverflow.ellipsis,
                     maxLines: 5,
                     style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                       color: kGreyColor700,
                       fontFamily: GoogleFonts.sourceSans3().fontFamily,
                       letterSpacing: 0.5,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                   const SizedBox(
                     height: 16,
                   ),
                   const SizedBox(
                     height: 56,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Column(
                         children: [
                           Text(
                             'Experience',
                             style:
                             Theme.of(context).textTheme.headlineMedium!.copyWith(
                               color: kBlackColor900,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           const SizedBox(
                             height: 8,
                           ),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Text(
                                 args.doctorYearOfExperience,
                                 style: Theme.of(context)
                                     .textTheme
                                     .displayMedium!
                                     .copyWith(
                                   color: kBlueColor,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                               const SizedBox(
                                 width: 4,
                               ),
                               Text(
                                 'yr',
                                 style: Theme.of(context).textTheme.headlineSmall,
                               )
                             ],
                           )
                         ],
                       ),
                       const SizedBox(
                         width: 8,
                       ),
                       const VerticalDivider(
                         thickness: 1,
                         color: kGreyColor400,
                       ),
                       Column(
                         children: [
                           Text(
                             'Patient',
                             style:
                             Theme.of(context).textTheme.headlineMedium!.copyWith(
                               color: kBlackColor900,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           const SizedBox(
                             height: 8,
                           ),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Text(
                                 args.doctorNumberOfPatient,
                                 style: Theme.of(context)
                                     .textTheme
                                     .displayMedium!
                                     .copyWith(
                                   color: kBlueColor,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                               const SizedBox(
                                 width: 4,
                               ),
                               Text(
                                 'ps',
                                 style: Theme.of(context).textTheme.headlineSmall,
                               )
                             ],
                           )
                         ],
                       ),
                       const SizedBox(
                         width: 8,
                       ),
                       const VerticalDivider(
                         thickness: 1,
                         color: kGreyColor400,
                       ),
                       Column(
                         children: [
                           Text(
                             'Rating',
                             style:
                             Theme.of(context).textTheme.headlineMedium!.copyWith(
                               color: kBlackColor900,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           const SizedBox(
                             height: 8,
                           ),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Text(
                                 args.doctorRating,
                                 style: Theme.of(context)
                                     .textTheme
                                     .displayMedium!
                                     .copyWith(
                                   color: kBlueColor,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                             ],
                           )
                         ],
                       ),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: 56,
                         width: 56,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(16),
                           color: kBlueColor,
                           image: const DecorationImage(
                             image: Svg(
                               'assets/svg/icon-chat.svg',
                               size: Size(
                                 36,
                                 36,
                               ),
                             ),
                           ),
                         ),
                       ),
                       const SizedBox(
                         width: 16,
                       ),
                       Expanded(
                         child: InkWell(
                           onTap: (){
                             ScaffoldMessenger.of(context).showSnackBar(
                                 SnackBar(content: Text('Success,You will receive a message with your appointment.',style: TextStyle(fontSize: 17,fontStyle: FontStyle.italic),)
                                 )
                             );
                           },
                           child: Container(
                             height: 56,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(16),
                               color: kGreenColor,
                             ),
                             child: Center(
                               child: Text(
                                 'Make an Appointment',
                                 style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                   color: kWhiteColor,
                                   fontWeight: FontWeight.w700,
                                 ),
                               ),
                             ),
                           ),
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
