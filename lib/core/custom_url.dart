enum Flavor { prod, stage, dev }

class CustomUrl {
  static Flavor? environment;
  static String get baseUrl {
    switch (environment) {
      case Flavor.prod:
        return "https://unknown/";
      case Flavor.stage:
        return "https://stagingapi.ecstasynigeria.com/";
      case Flavor.dev:
        return "http://unknown/";
      default:
        return "";
    }
  }
}
