enum Tip {
  ten,
  fifteen,
  twenty,
  twentyFive,
  custom,
}

extension TipPercentage on Tip {
  double get percentage {
    switch (this) {
      case Tip.ten:
        return 0.1;
      case Tip.fifteen:
        return 0.15;
      case Tip.twenty:
        return 0.2;
      case Tip.twentyFive:
        return 0.25;
      case Tip.custom:
        return customPercentage / 100;
    }
  }

  bool get isActive {
    switch (this) {
      case Tip.ten:
        return true;
      case Tip.fifteen:
        return false;
      case Tip.twenty:
        return false;
      case Tip.twentyFive:
        return false;
      case Tip.custom:
        return false;
    }
  }

  double get customPercentage => _customPercentage;

  set customPercentage(double percentage) => _customPercentage = percentage;

  static double _customPercentage = 0.0;
}
