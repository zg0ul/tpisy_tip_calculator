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
        // To prevent overflow when keyboard is open use SingleChildScrollView
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        color: accentColor,
                      ),
                      child: Center(
                        child: Text(
                          'Tipsy',
                          style: GoogleFonts.pacifico(
                            textStyle: const TextStyle(
                              color: titleColor,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: EnterBillWidget(),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: ChoosePillWidget(),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: SplitWidget(),
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: OutputWidget(),
                  ),
                  // SizedBox(height: MediaQuery.of(context).padding.bottom * 10),
                ],
              )
            ],
          ),
        ));
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height * 0.8);
    // // first point of the quadratic bezier curve
    // var firstStart = Offset(size.width / 5, size.height);
    // // second point of the quadratic bezier curve
    // var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // // third point of the quadratic bezier curve
    // var secondStart =
    //     Offset(size.width - (size.width / 3.24), size.height - 105);
    // // fourth point of the quadratic bezier curve
    // var secondEnd = Offset(size.width, size.height - 10);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

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
