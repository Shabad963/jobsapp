
import 'package:flutter/material.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/model/job_details_model.dart';


class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.data,
  });

  final Details? data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/ibm.png",
                    width: 32),
              ),
              SizedBox(width: 8),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data!.title!,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      data!.employer!.name!,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ]),
            ]),
            Icon(Icons.share, color: buttonColor),
          ]),
    );
  }
}
