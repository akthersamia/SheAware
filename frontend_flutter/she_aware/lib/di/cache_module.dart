import 'package:shared_preferences/shared_preferences.dart';
import 'package:she_aware/injection_container.dart';

Future<void> setUpCacheModule() async {
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
}
