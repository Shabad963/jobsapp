
import 'package:flutter/material.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/model/job_details_model.dart';



class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
  });

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
            "Skills",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
                height: 2,
                color: greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          
            Chip(
                label: Text("UI/UX designer",
                style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
              
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),),
                backgroundColor: whiteColor,
                side: BorderSide(color: borderColor)),
             Chip(
                label: Text("Illustrator",
                style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
              
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),),
                backgroundColor: whiteColor,
                side: BorderSide(color: borderColor)),
             Chip(
                label: Text("json",
                style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
              
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),),
                backgroundColor: whiteColor,
                side: BorderSide(color: borderColor)),
          ]),
        ],
      ),
    );
  }
}
