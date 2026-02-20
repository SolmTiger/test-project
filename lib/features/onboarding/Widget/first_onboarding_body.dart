import 'package:flutter/material.dart';
import '../../../../../core/components/custom_button.dart';

class FirstOnboardingBody extends StatelessWidget {
  final PageController controller;
  const FirstOnboardingBody({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Column(
        children: [
          const Text(
            'Shop with our \nsingle-use cards',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Buy from new online stores with extra single-use card numbers...',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const Spacer(),
          Image.asset('assets/images/image 4.png'),
          const Spacer(),
          CustomButton(
            text: 'Continue',
            onPressed: () => controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
