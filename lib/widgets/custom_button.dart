import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Ink(
          decoration:  BoxDecoration( borderRadius: BorderRadius.circular(2),
              color: Colors.blue,

              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600]!,
                  spreadRadius: 1,
                  blurRadius: 6,
                )
              ]),

          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

