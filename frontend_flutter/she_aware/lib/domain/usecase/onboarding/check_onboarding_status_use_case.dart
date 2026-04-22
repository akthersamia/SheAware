import 'package:she_aware/domain/repository/settings_repository.dart';

class CheckOnboardingStatusUseCase {
  final SettingsRepository _settingsRepository;

  CheckOnboardingStatusUseCase({required SettingsRepository settingsRepository})
      : _settingsRepository = settingsRepository;

  Future<bool> call() async {
    return await _settingsRepository.getOnboardingStatus();
  }
}
