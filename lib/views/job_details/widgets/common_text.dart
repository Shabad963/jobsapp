
import 'package:flutter/material.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/model/job_details_model.dart';


class CommonText extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final Color colorr;

  const CommonText({
    super.key,
    required this.title,
    required this.value,
    required this.colorr,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: colorr,
      child: Row(
        children: [
          SizedBox(width: 8),
          Image.asset(image, width: 12),
          SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
                color: greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
                color: blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
