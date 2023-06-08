import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:jobsapp/controller/job_details_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:jobsapp/model/job_details_model.dart';
import 'package:jobsapp/views/job_details/widgets/button_section.dart';
import 'package:jobsapp/views/job_details/widgets/common_text.dart';
import 'package:jobsapp/views/job_details/widgets/description_section.dart';
import 'package:jobsapp/views/job_details/widgets/skill_section.dart';
import 'package:jobsapp/views/job_details/widgets/title_section.dart';
import 'package:jobsapp/views/tabview/tab_view.dart';

class JobDetailsView extends StatelessWidget {
  JobDetailsView({super.key});

  JobDescriptionController controller = Get.put(JobDescriptionController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
            backgroundColor: whiteColor,
            leading: Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Image.asset("assets/images/main_icon.png"),
            ),
            actions: [
              CircleAvatar(
                  radius: 13,
                  backgroundColor: Color(0xffFFABA4),
                  child: Text(
                    "J",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
              SizedBox(width: 10),
              Center(
                child: Text(
                  "Jobseeker",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 10.5,
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Image.asset("assets/images/more_icon.png", width: 15),
              SizedBox(width: 10),
            ]),
        body: Obx(() {
          if (controller.isLoadingService.value == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            var data = controller.jobDescriptionData[0].response!.details;
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Container(
                    child: Column(
                  children: [
                    TitleSection(data: data),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: borderColor)),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Job code - ${data!.jobCode!}",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    height: 2,
                                    fontSize: 13,
                                    color: buttonColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Job Highlights",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    height: 2,
                                    color: greyColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CommonText(
                            title: "Salary",
                            value: "${data.minSalary} to ${data.maxSalary}",
                            colorr: textBackgroundColor,
                            image: "assets/images/salary.png"),
                        CommonText(
                            title: "Vacancy",
                            value: "${data.noOfVaccancies} nos",
                            colorr: whiteColor,
                            image: "assets/images/vacancy.png"),
                        CommonText(
                            title: "Work timing",
                            value:
                                "${data.timingFrom ?? 10} am to ${data.timingTo ?? 6} pm",
                            colorr: textBackgroundColor,
                            image: "assets/images/timing.png"),
                        CommonText(
                            title: "City",
                            value: data.jobLocation ?? "Sreekariyam,Trivandrum",
                            colorr: whiteColor,
                            image: "assets/images/vacancy.png"),
                        CommonText(
                            title: "Job type",
                            value: data.jobTypes!.first.toString() ?? "Fulltime",
                            colorr: textBackgroundColor,
                            image: "assets/images/salary.png"),
                        CommonText(
                            title: "Listed on",
                            value: DateFormat("dd-MM-yyy hh:mm a")
                                .format(data.postedOn!),
                            colorr: whiteColor,
                            image: "assets/images/timing.png"),
                        CommonText(
                            title: "Last date",
                            value:
                                DateFormat("dd-MM-yyy").format(data.updatedAt!),
                            colorr: textBackgroundColor,
                            image: "assets/images/timing.png")
                      ]),
                    ),
                    SizedBox(height: 20),
                    SkillSection(),
                    SizedBox(height: 20),
                    DescriptionSection(data: data),
                    SizedBox(height: 20),
                    ButtonSection(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Tap Apply to get to task 2"),
                    )
                  ],
                )),
              ),
            );
          }
        }));
  }
}
