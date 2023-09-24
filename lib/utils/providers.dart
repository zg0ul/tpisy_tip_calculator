import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tipsy_tip_calculator/utils/enums.dart';

final totalBillProvider = StateProvider<num>((ref) => 0);
final tipProvider = StateProvider<Tip>((ref) => Tip.ten);
final splitCounterProvider = StateProvider<int>((ref) => 3);

final customTipButtonContents = StateProvider<String?>((ref) => null);

