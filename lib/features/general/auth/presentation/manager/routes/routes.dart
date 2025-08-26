import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/active_account/active_account_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/change_password/change_password_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/forget_password/forget_password_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/login/login_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/register/register_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/register_shop/register_shop_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/resest_passsword_verify/reset_password_verify_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/reset_password/reset_password_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/splash/splash_imports.dart';
import 'package:flutter_tdd/features/general/auth/presentation/pages/verify_register/verify_register_imports.dart';

const List<AutoRoute> authRoute = [
  AdaptiveRoute(page: Splash, initial: true),
  AdaptiveRoute(page: Login),
  AdaptiveRoute(page: ActiveAccount),
  AdaptiveRoute(page: ResetPassword),
  AdaptiveRoute(page: ForgetPassword),
  AdaptiveRoute(page: Register),
  AdaptiveRoute(page: RegisterShop),
  AdaptiveRoute(page: VerifyRegister),
  AdaptiveRoute(page: ResetPasswordVerify),
  AdaptiveRoute(page: ChangePassword),

];
