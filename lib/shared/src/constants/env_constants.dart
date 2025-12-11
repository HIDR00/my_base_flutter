import '../../shared.dart';
import '../utils/log_utils.dart';

class EnvConstants {
  EnvConstants._();
  static const flavorKey = 'FLAVOR';

  static Flavor flavor = Flavor.values.byName(String.fromEnvironment(flavorKey, defaultValue: "develop"));

  static void init() {
    Log.d(flavor, name: EnvConstants.flavorKey);
  }
}
