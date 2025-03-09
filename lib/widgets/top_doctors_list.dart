import 'package:flutter/material.dart';
import 'package:mydoctor_app/widgets/top_doctors_card.dart';

import '../models/doctor.dart';


class TopDoctorsList extends StatelessWidget {
  const TopDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: topDoctors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/doctor_details', arguments: Doctor(
                doctorName: topDoctors[index].doctorName,
                doctorDescription: topDoctors[index].doctorDescription,
                doctorHospital: topDoctors[index].doctorHospital,
                doctorIsOpen: topDoctors[index].doctorIsOpen,
                doctorNumberOfPatient: topDoctors[index].doctorNumberOfPatient,
                doctorPicture: topDoctors[index].doctorPicture,
                doctorRating: topDoctors[index].doctorRating,
                doctorSpecialty: topDoctors[index].doctorSpecialty,
                doctorYearOfExperience: topDoctors[index].doctorYearOfExperience,
              ),);
            },
            child: TopDoctorsCard(
              doctor: topDoctors[index],
            ),
          );
        },
      ),
    );
  }
}
