import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/api/api_service.dart';
import 'package:wallet_app/features/authentication/data/repos/auth_repo.dart';
import 'package:wallet_app/features/authentication/presentation/logic/login_cubit/login_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/views/login_view.dart';
import 'package:wallet_app/features/authentication/presentation/views/signup_view.dart';
import 'package:wallet_app/features/cards/presentation/card_view.dart';
import 'package:wallet_app/features/home/presentation/home_view.dart';

class AppRouter {
  static const signUpView = '/signUpView';
  static const loginView = '/loginView';
  static const homeView = '/homeView';
  static const cardView = '/cardView';
  static final router = GoRouter(
    initialLocation: loginView,
    routes: [
      GoRoute(
        path: loginView,
        builder: (context, state) => BlocProvider(
            create: (context) => LoginCubit(
                  AuthRepo(ApiService()),
                ),
            child: const LoginView()),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(
            AuthRepo(ApiService()),
          ),
          child: const SignUpView(),
        ),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: cardView,
        builder: (context, state) => const CardView(),
      ),
    
    ],
  );
}
