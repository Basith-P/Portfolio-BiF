// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/list_tile_text.dart';
import '/widgets/custom_card.dart';

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
                const SizedBox(height: 10),
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
                    const SizedBox(width: 5),
                  ],
                ),
                Text(
                  'name\'s Basith\nI\'m a Developer',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 30),
                buildCustomCard(
                  context,
                  'About',
                  [
                    Text(
                      'I\'m a developer focused on flutter and a computer science student',
                      style: Theme.of(context).textTheme.headline6!.copyWith(height: 1.8),
                    ),
                  ],
                ),
                buildCustomCard(
                  context,
                  'Languages',
                  [
                    ListTileText('Flutter'),
                    ListTileText('Python'),
                    ListTileText('HTML'),
                    ListTileText('CSS'),
                  ],
                ),
                buildCustomCard(
                  context,
                  'Hobbies',
                  [
                    ListTileText('Reading'),
                    ListTileText('Make videos'),
                  ],
                ),
                buildCustomCard(
                  context,
                  'Social',
                  [
                    InkWell(
                      child: ListTileText('GitHub'),
                      onTap: () => _launchURL('https://github.com/Basith-P'),
                    ),
                    ListTileText('LinkedIn'),
                    ListTileText('Instagram'),
                    ListTileText('YouTube'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
