import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'enums.dart';

final totalBillProvider = StateProvider<num>((ref) => 0);
final tipProvider = StateProvider<Tip>((ref) => Tip.ten);
final splitCounterProvider = StateProvider<int>((ref) => 3);

final customTipButtonContentsProvider = StateProvider<String?>((ref) => null);
final customTipButtonIsActiveProvider = StateProvider<bool>((ref) => false);
final customTipPercentageProvider = StateProvider<double>((ref) => 0.0);
