
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/model/job_details_model.dart';
import 'package:jobsapp/views/tabview/tab_view.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal : 40,vertical: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey)),
            child: Text("Save",style:GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12,
               
                color: blackColor,
                fontWeight: FontWeight.w600,
              ),
            ))),
            SizedBox(width: 10),
        Expanded(
          child: InkWell(
            onTap: (){
              Get.to(()=> TabView());
            },
            child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: buttonColor,
                    borderRadius: BorderRadius.circular(30),
                   ),
                child: Center(child: Text("Apply",style:GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12,
                 
                  color: whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              )))),
          ),
        ),
      ],
    );
  }
}

