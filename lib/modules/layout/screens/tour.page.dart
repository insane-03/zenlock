import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenlock/assets/theme.dart';

class TourPage extends StatelessWidget {
  const TourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 240, 250, 1),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Align children to the left
        children: [
          const SizedBox(
            height: 230,
          ),
          Image.asset(
            'lib/assets/images/fingerPrint.gif',
            scale: 0.6,
          ), // Replace 'your_image.png' with your image file

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Column(
              children: [
                Text('Protect your time',
                    style: AppTheme.darkTheme(context)
                        .primaryTextTheme
                        .titleMedium),
                const SizedBox(
                  height: 25,
                ),
                Text('With Zenlock you can set app passwords and schedule',
                    style: AppTheme.darkTheme(context)
                        .primaryTextTheme
                        .labelMedium),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  80.0), // Adjust the value for the desired roundness
                            ),
                          ),
                          onPressed: () {
                            // Add your button functionality here
                          },
                          child: const SizedBox(
                            width:
                                5, // Adjust the width to accommodate the text
                            height:
                                60, // Adjust the height to accommodate the text
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 44.0),
                          child: Text('Start',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow
                                  .ellipsis, // Add ellipsis for text overflow
                              maxLines:
                                  2, // Adjust max lines based on your needs
                              style: AppTheme.darkTheme(context)
                                  .primaryTextTheme
                                  .titleSmall),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () => {Get.toNamed('/home')},
                      icon: const Icon(Icons.arrow_forward),
                      highlightColor: const Color.fromRGBO(230, 240, 250, 1),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
