enum Flavor {
  DEVELOP,
  PRODUCTION,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOP:
        return 'DebugApp';
      case Flavor.PRODUCTION:
        return 'kyom日記';
      default:
        return 'DebugApp';
    }
  }

}
