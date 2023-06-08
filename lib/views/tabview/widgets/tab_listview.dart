import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/config/colors.dart';

class TabBarListView extends StatelessWidget {
  const TabBarListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
           
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/john.png",width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Text(
                            "John Doe",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Gender:    ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "Male",
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
                          Row(
                            children: [
                              Text(
                                "Age:   ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "23",
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
                          Row(
                            children: [
                              Text(
                                "Location:   ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "Uae",
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
                          Row(
                            children: [
                              Text(
                                "Date applied :",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "02 jan 2020",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.done)
                    ],
                  ),
                  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                            
                              Chip(
                                  label: Text("Accept",
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
                                  label: Text("Consider",
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
                                  label: Text("Reject",
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
            ),
          );
        },
        itemCount: 10, // Number of items in the list
      ),
    );
  }
}
