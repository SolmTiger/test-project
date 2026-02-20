import 'package:flutter/material.dart';
import '../../../../../core/components/custom_button.dart'; // تأكد من المسار الصحيح للزر الموحد

class SecOnboardingBody extends StatelessWidget {
  final PageController controller;

  const SecOnboardingBody({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Column(
        children: [
          const Text(
            'Shop with our \n single-use cards',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Buy from new online stores with extra,\n single-use card numbers that wonot work twice,\n keeping your details safe even if they get exposed.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              'assets/images/image 3.jpg',
            ), // استخدام الصورة من ملفك الأصلي
          ),
          const Spacer(),
          CustomButton(
            text: 'Continue',
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
