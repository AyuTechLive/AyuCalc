import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AyuCalc'),
        backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('image/IMG202302172029301.jpg'),
            ),
            const Text("  "),
            const Text("  "),
            const Text(
              'AYUSH SHAHI',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(23),
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://github.com/Ayushshahi2003'));
                    debugPrint('Floating Action Button Pressed');
                  },
                  splashColor: Colors.black,
                  child: Image.asset(
                    'image/github.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(width: 26),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://flutter.dev'));
                    debugPrint('Main Buutton Pressed');
                  },
                  splashColor: Colors.pink,
                  child: Image.asset(
                    'image/instagram.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(width: 26),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://www.linkedin.com/in/ayush-shahi-5412b8123/'));
                    debugPrint('Main Buutton Pressed');
                  },
                  splashColor: Colors.blue,
                  child: Image.asset(
                    'image/linkedin.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(width: 26),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://drive.google.com/file/d/1gxTijt1niToXdPgEwNwBJA3-OBC7msVk/view?usp=sharing'));
                    debugPrint('Main Buutton Pressed');
                  },
                  splashColor: Colors.white,
                  child: Image.asset(
                    'image/cv.png',
                    height: 60,
                    width: 60,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(child: Text('Hello! My name is Ayush Shahi, and I am an aspiring Android Developer and Mechanical Engineering student at NIT Silchar. I have a passion for technology and a strong interest in creating innovative and user-friendly mobile applications. Alongside my academic pursuits in mechanical engineering, I have dedicated my time to learning and honing my skills in the field of Android development. ',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            
            
            
              
              
            
          ],
        ),
      ),
    );
  }
}
