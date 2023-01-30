import 'package:flutter/material.dart';

import '../screens/Partners/views/partners_view.dart';
import '../screens/about_app/view/about_app_view.dart';
import '../screens/add_reviews/views/add_review_view.dart';
import '../screens/auth/choose_auth/view/choose_auth.dart';
import '../screens/auth/choose_method/view/choose_method.dart';
import '../screens/auth/choose_method/view/confirm_code.dart';
import '../screens/auth/choose_method/view/confirm_email.dart';
import '../screens/auth/choose_method/view/confirm_phone.dart';
import '../screens/auth/forget_pass/view/change_pass.dart';
import '../screens/auth/forget_pass/view/confirm_code_pass.dart';
import '../screens/auth/forget_pass/view/forget_pass.dart';
import '../screens/auth/login/view/login_view.dart';
import '../screens/auth/register/view/register_view.dart';
import '../screens/btn_nav.dart';
import '../screens/change_pass/views/change_pass.dart';
import '../screens/contact_us/views/contact_us_view.dart';
import '../screens/customer/view/customer_view.dart';
import '../screens/faq/view/faq_view.dart';
import '../screens/gallery/views/gallery_view.dart';
import '../screens/home/view/home_view.dart';
import '../screens/intro_screen/views/intro_screen.dart';
import '../screens/lang/views/lang_view.dart';
import '../screens/langague/view/lang_view.dart';
import '../screens/managerWord/view/manager_word.dart';
import '../screens/offers/views/offer_details_view.dart';
import '../screens/offers/views/offers_view.dart';
import '../screens/order_now/view/order_now_view.dart';
import '../screens/profile/views/edit_info.dart';
import '../screens/profile/views/personal_info.dart';
import '../screens/profile/views/profile_view.dart';
import '../screens/reviews/views/review_view.dart';
import '../screens/service_details/views/service_details_view.dart';
import '../screens/services/views/service_view.dart';
import '../screens/settings/views/settings_view.dart';
import '../screens/splash.dart';
import '../screens/sub_service/views/sub_service_view.dart';
import '../screens/technical_support/view/problem_details.dart';
import '../screens/technical_support/view/problem_history.dart';
import '../screens/technical_support/view/tecnical_support_view.dart';
import 'routes.dart';



Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splash:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
    case AppRoutes.lang:
      return MaterialPageRoute(builder: ((context) => const LanguageView()));
    case AppRoutes.intro:
      return MaterialPageRoute(builder: ((context) => const IntroView()));
    case AppRoutes.chooseAuth:
      return MaterialPageRoute(builder: ((context) => const ChooseAuth()));
    case AppRoutes.login:
      return MaterialPageRoute(builder: ((context) => const LoginView()));
    case AppRoutes.register:
      return MaterialPageRoute(builder: ((context) => const RegisterView()));
    case AppRoutes.chooseMethod:
      return MaterialPageRoute(builder: ((context) => const ChooseMethodView()));
    case AppRoutes.confirmPhone:
      return MaterialPageRoute(builder: ((context) => const ConfirmPhone()));
    case AppRoutes.confirmEmail:
      return MaterialPageRoute(builder: ((context) => const ConfirmEmail()));
    case AppRoutes.confirmCode:
      return MaterialPageRoute(builder: ((context) => const ConfirmCode()));
    case AppRoutes.forgetPass:
      return MaterialPageRoute(builder: ((context) => const ForgetPass()));
    case AppRoutes.confirmCodePass:
      return MaterialPageRoute(builder: ((context) => const ConfirmCodePass()));
    case AppRoutes.chanePass:
      return MaterialPageRoute(builder: ((context) => const ChangePasswordView()));
    case AppRoutes.homeView:
      return MaterialPageRoute(builder: ((context) => const HomeView()));
    case AppRoutes.galleryView:
      return MaterialPageRoute(builder: ((context) => const GalleryView()));
    case AppRoutes.serviceView:
      return MaterialPageRoute(builder: ((context) => const ServiceView()));
    case AppRoutes.subServiceView:
      return MaterialPageRoute(builder: ((context) =>  SubServiceView()));
    case AppRoutes.serviceDetailsView:
      return MaterialPageRoute(builder: ((context) => const ServiceDetailsView()));
    case AppRoutes.reviewView:
      return MaterialPageRoute(builder: ((context) => const ReviewView()));
    case AppRoutes.addReviewView:
      return MaterialPageRoute(builder: ((context) => const AddReviewView()));
    case AppRoutes.orderNow:
      return MaterialPageRoute(builder: ((context) => const OrderNowView()));
    case AppRoutes.offersView:
      return MaterialPageRoute(builder: ((context) =>  OffersView(withBack: true,)));
    case AppRoutes.offersDetailsView:
      return MaterialPageRoute(builder: ((context) => const OfferDetailsView()));
    case AppRoutes.profileView:
      return MaterialPageRoute(builder: ((context) => const ProfileView()));
    case AppRoutes.personalInfo:
      return MaterialPageRoute(builder: ((context) => const PersonalInfo()));
    case AppRoutes.editInfo:
      return MaterialPageRoute(builder: ((context) => const EditInfo()));
    case AppRoutes.btnNav:
      return MaterialPageRoute(builder: ((context) => const ButNavBar()));
    case AppRoutes.partnersView:
      return MaterialPageRoute(builder: ((context) => const PartnersScreen()));
    case AppRoutes.customerScreen:
      return MaterialPageRoute(builder: ((context) => const CustomerView()));
    case AppRoutes.technicalScreen:
      return MaterialPageRoute(builder: ((context) => const TechnicalView()));
    case AppRoutes.faqScreen:
      return MaterialPageRoute(builder: ((context) => const FaqView()));
    case AppRoutes.aboutappScreen:
      return MaterialPageRoute(builder: ((context) => const AboutAppView()));
    case AppRoutes.contactusScreen:
      return MaterialPageRoute(builder: ((context) => const ContactUsView()));
    case AppRoutes.problemHistoryScreen:
      return MaterialPageRoute(builder: ((context) => const ProblemHistoryView()));
    case AppRoutes.problemDetailsScreen:
      return MaterialPageRoute(builder: ((context) => const ProblemDetails()));
    case AppRoutes.settingsView:
      return MaterialPageRoute(builder: ((context) => const SettingsView()));
    case AppRoutes.langView:
      return MaterialPageRoute(builder: ((context) => const LangView()));
    case AppRoutes.changePassView:
      return MaterialPageRoute(builder: ((context) => const ChangePassword()));
    case AppRoutes.managerWord:
      return MaterialPageRoute(builder: ((context) => const ManagerWord()));
    default:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
  }
}