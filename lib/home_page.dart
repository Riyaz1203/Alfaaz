import 'package:alfaaz/feature_box.dart';
import 'package:alfaaz/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alfaaz'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(children: [
        //Profile part
        Stack(
          children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(top: 5),
                decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle),
              ),
            ),
            Container(
              height: 123,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/virtualAssistant.png'))),
            )
          ],
        ),
        //Chat Bubble....
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.borderColor),
              borderRadius:
                  BorderRadius.circular(20).copyWith(topLeft: Radius.zero)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Hi Iam Alfaaz , What task can I do for you ?',
              style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontFamily: 'Cera Pro'),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10, left: 22),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Here are few features',
            style: TextStyle(
                color: Pallete.mainFontColor,
                fontSize: 18,
                fontFamily: 'Cera Pro',
                fontWeight: FontWeight.bold),
          ),
        ),
        //Features List

        const Column(
          children: [
            FeatureBox(
              color: Pallete.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              descriptionText:
                  'A smater way to stay organized and informed with ChatGPT',
            ),
            FeatureBox(
              color: Pallete.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText:
                  'Get inspired and stay creative with your personal assistant power by Dall-E',
            ),
            // FeatureBox(
            //   color: Pallete.thirdSuggestionBoxColor,
            //   headerText: 'Smart Voice Assistant',
            //   descriptionText:
            //       'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
            // )
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: Icon(Icons.mic),
      ),
    );
  }
}
