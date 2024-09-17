import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/Date_screen.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/bookingReview_screen.dart';
import 'package:final_project/features/authentication/presentation/views/forgetpasswordScreen.dart';
import 'package:final_project/features/authentication/presentation/views/loginScreen.dart';
import 'package:final_project/features/authentication/presentation/views/signupScreen.dart';
import 'package:final_project/features/authentication/presentation/views/splash_screen.dart';
import 'package:final_project/features/authentication/presentation/views/verficationScreen.dart';
import 'package:final_project/features/home/presentation/views/home_screen.dart';
import 'package:final_project/features/home/presentation/views/room_details_screen.dart';
import 'package:final_project/features/home/presentation/views/rooms_screen.dart';
import 'package:final_project/features/home/presentation/views/widget/custom_drawer.dart';
import 'package:final_project/features/membership/presentation/views/birthday_screen.dart';
import 'package:final_project/features/membership/presentation/views/booking_review_screen.dart';
import 'package:final_project/features/membership/presentation/views/memberShip_screen.dart';
import 'package:final_project/features/membership/presentation/views/photoSession_screen.dart';
import 'package:final_project/features/membership/presentation/views/widgets/1bookingReview_box.dart';
import 'package:final_project/features/offers/presentation/views/event_details_screen.dart';
import 'package:final_project/features/offers/presentation/views/event_screen.dart';
import 'package:final_project/features/offers/presentation/views/offer_screen.dart';
import 'package:final_project/features/offers/presentation/views/widgets/offers_scroll.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/views/onboarding_screen.dart';

abstract class Approuter{
  static const OnboardingPath="/onboarding";
  static const LoginPath="/login";
  static const SignupPath="/signup";
  static const ForgetPath="/forgetpassword";
  static const VervicationPath="/verfication";
  static const HomePath="/home";
  static const RoomsPath="/Rooms";
  static const RoomDetailsPath="/DetailsRooms";
  static const SelectDate_TimePath="/SelectDate_TimePath";
  static const BookingReviewRooms="/BookingReviewRooms";
  static const OffersScroll="/OffersScroll";
  static const EventsScroll="/EventsScroll";
  static const EventReview="/EventReview";
  static const Membership="/Membership";
  static const Birthday="/Birthday";
  static const PhotoSession="/PhotoSession";
  static const BookingReviewMembership="/BookingReviewMembership";






  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: OnboardingPath,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: LoginPath,
        builder: (context, state) => const Loginscreen(),
      ),
      GoRoute(
        path: SignupPath,
        builder: (context, state) => const Signupscreen(),
      ),
      GoRoute(
        path: ForgetPath,
        builder: (context, state) => const Forgetpasswordscreen(),
      ),
      GoRoute(
        path: VervicationPath,
        builder: (context, state) => const Verficationscreen(),
      ),
      GoRoute(
        path: HomePath,
        builder: (context, state) => const HomeScreen(),
      ),

      GoRoute(
        path: RoomsPath,
        builder: (context, state) => const RoomsScreen(),
      ),
      GoRoute(
        path: RoomDetailsPath,
        builder: (context, state) => const RoomDetailsScreen(),
      ),
      GoRoute(
        path: SelectDate_TimePath,
        builder: (context, state) => const DateScreen(),
      ),
      GoRoute(
        path: BookingReviewRooms,
        builder: (context, state) => const BookingreviewScreen(),
      ),
      GoRoute(
        path: OffersScroll,
        builder: (context, state) => const OfferScreen(),
      ),
      GoRoute(
        path: EventsScroll,
        builder: (context, state) => const EventScreen(),
      ),
      GoRoute(
        path: EventReview,
        builder: (context, state) => const EventDetailsScreen(),
      ),
      GoRoute(
        path: Membership,
        builder: (context, state) =>  MembershipScreen(),
      ),
      GoRoute(
        path: Birthday,
        builder: (context, state) => const BirthdayScreen(),
      ),
      GoRoute(
        path: PhotoSession,
        builder: (context, state) => const PhotosessionScreen(),
      ),
      GoRoute(
        path: BookingReviewMembership,
        builder: (context, state) => const MemberShipBookingreviewScreen(),
      ),


    ],
  );
}