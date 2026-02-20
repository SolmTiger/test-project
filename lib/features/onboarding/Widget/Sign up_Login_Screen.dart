import 'package:flutter/material.dart';
import '../../../../../core/components/custom_button.dart';

class LogoOnboardingBody extends StatelessWidget {
  const LogoOnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Column(
        children: [
          const Text(
            'Keep your budget\n on track with smart\nanalytics',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Get a clear view of your spendings, know exactly where your money is going',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/image 5.png',
            fit: BoxFit.fitHeight,
          ), // استخدام الصورة من ملفك الأصلي
          const Spacer(),
          // استخدام الزر الموحد لعملية الـ Sign up والـ Login
          CustomButton(
            text: 'Sign Up',
            onPressed: () {
              // أضف كود الانتقال لصفحة إنشاء الحساب هنا
            },
          ),
          const SizedBox(height: 15),
          // زر Login بتنسيق مختلف قليلاً (اختياري)
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(300, 60),
              side: const BorderSide(color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
