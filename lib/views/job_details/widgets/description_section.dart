
import 'package:flutter/material.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/model/job_details_model.dart';


class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
    required this.data,
  });

  final Details? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Job Description",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
                height: 2,
                color: greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),),
            Text(
            data!.description! ?? "lorus ipsum................................",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
               
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),)
        ],
      ),
    );
  }
}
