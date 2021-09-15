import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_bif/screens/about_screen.dart';
import 'package:portfolio_bif/screens/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      'Hello, my',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 10),
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/1.png'),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              Text(
                'name\'s Basith\nI\'m a Developer',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 30),
              buildCustomCard('About', () => Navigator.pushNamed(context, AboutScreen.routName)),
              buildCustomCard(
                  'Languages', () => Navigator.pushNamed(context, AboutScreen.routName)),
              buildCustomCard('Projects', () => Navigator.pushNamed(context, AboutScreen.routName)),
              buildCustomCard(
                  'Education', () => Navigator.pushNamed(context, AboutScreen.routName)),
              buildCustomCard(
                  'Experience', () => Navigator.pushNamed(context, AboutScreen.routName)),
              buildCustomCard('Social', () => Navigator.pushNamed(context, AboutScreen.routName)),
              buildCustomCard('Hobbies', () => Navigator.pushNamed(context, AboutScreen.routName)),
            ],
          ),
        ),
      )),
    );
  }
}
