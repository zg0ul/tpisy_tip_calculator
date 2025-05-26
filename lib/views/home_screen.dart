import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/styles/colors.dart';
import '../widgets/choose_tip.dart';
import '../widgets/enter_bill.dart';
import '../widgets/output.dart';
import '../widgets/split.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          // Header with wave
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: 165,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: accentColor,
              ),
              child: Center(
                child: Text(
                  'Tipsy',
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      color: titleColor,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 25),

          // Enter bill section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: EnterBillWidget(),
          ),
          const SizedBox(height: 10),

          // Choose tip section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ChoosePillWidget(),
          ),
          const SizedBox(height: 10),

          // Split section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SplitWidget(),
          ),
          const SizedBox(height: 25),

          // Output section - part of normal flow
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: OutputWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.8);

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.5,
      size.width * 0.5,
      size.height * 0.75,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 1,
      size.width * 1,
      size.height * 0.75,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
