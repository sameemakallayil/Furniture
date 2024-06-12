import 'package:furnitureproject/ui/screens/Address/address_view.dart';
import 'package:furnitureproject/ui/screens/Cart/cart_view.dart';
import 'package:furnitureproject/ui/screens/DashBoard/dashboard_view.dart';
import 'package:furnitureproject/ui/screens/Failure/failure_view.dart';
import 'package:furnitureproject/ui/screens/HomePage/homepage_view.dart';
import 'package:furnitureproject/ui/screens/Menu/menu_view.dart';
import 'package:furnitureproject/ui/screens/My%20order/myorder_view.dart';
import 'package:furnitureproject/ui/screens/Notifications/notification_view.dart';
import 'package:furnitureproject/ui/screens/Order_Tracking/ordertracking.view.dart';
import 'package:furnitureproject/ui/screens/Payment/payment_view.dart';
import 'package:furnitureproject/ui/screens/ProductDetail/productdetail_view.dart';
import 'package:furnitureproject/ui/screens/Search/search_view.dart';
import 'package:furnitureproject/ui/screens/Success/success_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';
import '../ui/screens/Login/login_view.dart';
import '../ui/screens/Sign Up/signup_view.dart';
import '../ui/screens/home/home_view.dart';
import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: NotificationView),
    MaterialRoute(page: MenuView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: ProductDetailView),
    MaterialRoute(page: AddressView),
    MaterialRoute(page: PaymentView),
    MaterialRoute(page: MyorderView),
    MaterialRoute(page: OrderTrackingView),
    MaterialRoute(page: SuccessView),
    MaterialRoute(page: FailureView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: HomePageView),



  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
