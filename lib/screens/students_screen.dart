
import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  final List<String> students = [
  'روميساء السعيد السعيد أحمد سرور',
  'هدير ظريف كامل إبراهيم على',
  'أميره علي طه يوسف المرسي',
  "عادل ابو زيد ابراهيم ابوزيد سليم",
  'محمد أنس يوسف يسيونى',
  'منة اللّه راشد عبدالسلام',
      'أحمد عوض أحمد عوض',
  'عبد الرحمن محمد محى محمود',
  'نوران شفيق عزيز عليوه',
  'حسن مدحت محمد درويش',
  'محمد السيد محمد عبد الرحمن المليطي',
  'خالد عزت عبد السلام شرف',
  ];


  @override
  Widget build(BuildContext context)

  {
    return Scaffold( appBar: AppBar(title: Text('أسماء الطلاب',style: TextStyle(fontSize: 30),),centerTitle: true,),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    students[index],
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  ".${index + 1}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                ),
              ],
            ),
          );
        },
      ),
    );

  }
}
