import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsapp/config/colors.dart';
import 'package:jobsapp/views/tabview/widgets/tab_listview.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  SafeArea(
        child: DefaultTabController(
            length: 3, // Number of tabs
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                     
                      child: Text(
                        'Awaiting Review',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                     Tab(
                      child: Text(
                        'Interested',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                      Tab(
                      child: Text(
                        'Accepted',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Tab 1 content
                      TabBarListView(),
                      // Tab 2 content
                       TabBarListView(),
                      // Tab 3 content
                       TabBarListView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}


class TitleTab extends StatelessWidget {
  final String title;
  const TitleTab({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 8,
                color: blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: CircleAvatar(
                radius: 8,
                backgroundColor: borderColor,
                child: Text(
                  "15",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 7,
                      color: greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}


