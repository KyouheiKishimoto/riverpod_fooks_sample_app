enum Flavor {
  DEVELOP,
  PRODUCTION,
  SETSTATE,
  PROVIDER,
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
      case Flavor.SETSTATE:
        return 'setState';
      case Flavor.PROVIDER:
        return 'Provider';
      default:
        return 'title';
    }
  }

}
