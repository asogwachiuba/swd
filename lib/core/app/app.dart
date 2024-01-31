import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:swd/core/api/api_client.dart';
import 'package:swd/core/services/database_service.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/core/services/secure_storage.dart';
import 'package:swd/features/dashboard/dashboard_view.dart';
import 'package:swd/features/home/home_view.dart';
import 'package:swd/features/onboarding/account_creation_successful/account_creation_successful_view.dart';
import 'package:swd/features/onboarding/create_account_page/create_account_view.dart';
import 'package:swd/features/onboarding/login_page/login_view.dart';
import 'package:swd/features/onboarding/reset_password_page/reset_password_view.dart';
import 'package:swd/features/onboarding/start_page/start_view.dart';
import 'package:swd/features/onboarding/verify_email/verify_email_view.dart';
import 'package:swd/features/onboarding/welcome_back_page/welcome_back_view.dart';
import 'package:swd/features/referrals/referrals_view.dart';
import 'package:swd/features/services/services_view.dart';
import 'package:swd/features/settings/settings_view.dart';
import 'package:swd/features/statistics/statistics_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: WelcomeBackView),
    MaterialRoute(page: CreateAccountView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: VerifyEmailView),
    MaterialRoute(page: AccountCreationSuccessfulView),
    MaterialRoute(page: ResetPasswordView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ServicesView),
    MaterialRoute(page: ReferralsView),
    MaterialRoute(page: StatisticsView),
    MaterialRoute(page: SettingsView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: ApiClient),
    LazySingleton(classType: DatabaseService),
    LazySingleton(classType: SecureStorageService),
    LazySingleton(classType: OnboardingService),
    // LazySingleton(classType: UserService),
    // LazySingleton(classType: PlaceOwnerServiceImpl, asType: PlaceOwnerService),

    Presolve(
      classType: SharedPreferences,
      presolveUsing: SharedPreferences.getInstance,
    ),
  ],
  logger: StackedLogger(),
)
class App {}
