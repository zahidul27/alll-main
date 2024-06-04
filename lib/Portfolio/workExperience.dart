import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkExpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Work Experience",
          style: TextStyle(
            fontFamily: "Comfortaa",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIntroText(),
              SizedBox(height: 20),
              _buildExperienceCard(
                context,
                icon: FontAwesomeIcons.terminal,
                title: "OpenGenus Foundation",
                subtitle:
                    "(Data Structures and Algorithms Developer Intern)\n[May 2020 - present]",
                description:
                    "My roles and responsibilities for this position are:\n"
                    "=> Open-Source contribution in the existing project codes\n"
                    "=> Writing technical articles",
              ),
              SizedBox(height: 20),
              _buildExperienceCard(
                context,
                icon: FontAwesomeIcons.terminal,
                title: "Widhya",
                subtitle: "(Mission Advocate)\n[June 2020 - present]",
                description: "My responsibilities include:\n"
                    "=> Creating content for Missions\n"
                    "=> Creating communities and helping to reach out to more students\n"
                    "=> Participate in the decision making processes along with the rest of Team Widhya",
              ),
              SizedBox(height: 20),
              _buildExperienceCard(
                context,
                icon: FontAwesomeIcons.terminal,
                title: "Wealthy Waste",
                subtitle:
                    "(Data Analytics & Research Intern)\n[May 2020 - June 2020]",
                description:
                    "My roles and responsibilities for this position are:\n"
                    "=> Analysis of the provided data (Exploratory Data Analysis)\n"
                    "=> Correlating the data with real-life incidents, by using Statistical Analysis\n"
                    "=> Preparing a research output based on the findings",
              ),
              SizedBox(height: 20),
              _buildExperienceCard(
                context,
                icon: FontAwesomeIcons.terminal,
                title: "GeeksForGeeks",
                subtitle:
                    "(Technical Content Writer Intern)\n[May 2020 - present]",
                description:
                    "My roles and responsibilities for this position are:\n"
                    "=> Writing innovative technical articles\n"
                    "=> Editing and improving the code and content of the existing articles",
              ),
              SizedBox(height: 20),
              _buildExperienceCard(
                context,
                icon: FontAwesomeIcons.terminal,
                title: "IncubateIND",
                subtitle: "(Fellow)\n[June 2020 - present]",
                description:
                    "INCIND Technology Fellowship is a unique and exclusive program for the coders, hackers, designers and innovators of tomorrow. As part of this fellowship, you will get an opportunity to develop your skills by working with senior technology leaders and industry experts.",
              ),
              SizedBox(height: 20),
              _buildExperienceCard(
                context,
                icon: FontAwesomeIcons.terminal,
                title: "Lets Upgrade",
                subtitle: "(Project Manager and Mentor)\n[July 2020 - present]",
                description:
                    "I have started working as a Project Manager as well as a Mentor for my open-sourced project named Algorithmic Treasure for the open-sourced competition named ***. This project aims to build a website which will contain the codes along with the techniques and explanations so that it can be helpful for many.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroText() {
    return Text(
      "My work experience includes working for startups, communities, and evolving with innovative business and marketing strategies.",
      style: TextStyle(
        fontSize: 18,
        fontFamily: "Comfortaa",
        color: Colors.white,
        letterSpacing: 1.5,
        height: 1.5,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildExperienceCard(BuildContext context,
      {required IconData icon,
      required String title,
      required String subtitle,
      required String description}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FaIcon(icon, color: Colors.deepPurple, size: 30),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Sniglet',
                      fontSize: 24,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 16,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
