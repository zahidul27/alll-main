import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ABOUT ME",
          style: TextStyle(
            fontFamily: "Comfortaa",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg12.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: <Widget>[
               CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Who Am I?",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "Md. Zaidul Islam Talukder",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 24, // Increased font size
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "I am an enthusiastic developer, learner, and adventurous CS geek with a knack for designing. "
                  "I strongly believe that imagination brings change and paves the way to develop something amazing and interesting. "
                  "My interests include designing and developing sustainable products that can solve people's problems.",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "What Am I?",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "I am a student, a developer, and a designer. I am also a part-time writer and mentor. "
                  "I cherish solitude the most, as it generates the best out of me.",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
               SizedBox(height: 20),
               Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "My Hobbies",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: <Widget>[
                    HobbyIcon(
                        icon: FontAwesomeIcons.music, color: Colors.pinkAccent),
                    HobbyIcon(
                        icon: FontAwesomeIcons.playCircle,
                        color: Colors.yellowAccent),
                    HobbyIcon(
                        icon: FontAwesomeIcons.gamepad,
                        color: Colors.purpleAccent),
                    HobbyIcon(
                        icon: FontAwesomeIcons.feather,
                        color: Colors.greenAccent),
                    HobbyIcon(
                        icon: FontAwesomeIcons.tableTennis,
                        color: Colors.blueAccent),
                    HobbyIcon(
                        icon: FontAwesomeIcons.bug, color: Colors.redAccent),
                  ],
                ),
              ),
               SizedBox(height: 20),
               Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "My Goals In Life",
                  style: TextStyle(
                    fontFamily: 'Sniglet',
                    fontSize: 37,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "In everyday life, I witness many problems in my surroundings that can be solved using technology. "
                  "My goal in life is to design something good that can solve people's problems and inspire the upcoming generation as well.",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
               SizedBox(
                height: 40,
                width: 260,
                child: Divider(
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HobbyIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const HobbyIcon({required this.icon, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon),
      color: color,
      iconSize: 40,
      onPressed: () {},
    );
  }
}
