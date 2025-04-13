// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Deliverzler`
  String get appName {
    return Intl.message('Deliverzler', name: 'appName', desc: '', args: []);
  }

  /// `Poppins`
  String get fontFamily {
    return Intl.message('Poppins', name: 'fontFamily', desc: '', args: []);
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Screen not found!`
  String get screenNotFound {
    return Intl.message(
      'Oops! Screen not found!',
      name: 'screenNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Go to Home`
  String get goToHome {
    return Intl.message('Go to Home', name: 'goToHome', desc: '', args: []);
  }

  /// `Please check your device"s network connection.`
  String get pleaseCheckYourDeviceNetwork {
    return Intl.message(
      'Please check your device"s network connection.',
      name: 'pleaseCheckYourDeviceNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Oops! Something went wrong!`
  String get ops_err {
    return Intl.message(
      'Oops! Something went wrong!',
      name: 'ops_err',
      desc: '',
      args: [],
    );
  }

  /// `Please try again!`
  String get pleaseTryAgain {
    return Intl.message(
      'Please try again!',
      name: 'pleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later!`
  String get pleaseTryAgainLater {
    return Intl.message(
      'Please try again later!',
      name: 'pleaseTryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `You are currently offline.`
  String get youAreCurrentlyOffline {
    return Intl.message(
      'You are currently offline.',
      name: 'youAreCurrentlyOffline',
      desc: '',
      args: [],
    );
  }

  /// `Your are back online.`
  String get youAreBackOnline {
    return Intl.message(
      'Your are back online.',
      name: 'youAreBackOnline',
      desc: '',
      args: [],
    );
  }

  /// `Account not found or password invalid`
  String get unauthorizedError {
    return Intl.message(
      'Account not found or password invalid',
      name: 'unauthorizedError',
      desc: '',
      args: [],
    );
  }

  /// `You don't have permission to access this service`
  String get forbiddenError {
    return Intl.message(
      'You don\'t have permission to access this service',
      name: 'forbiddenError',
      desc: '',
      args: [],
    );
  }

  /// `Request page not found. Please contact support for more details.`
  String get notFoundError {
    return Intl.message(
      'Request page not found. Please contact support for more details.',
      name: 'notFoundError',
      desc: '',
      args: [],
    );
  }

  /// `The request could not be processed because of conflict in the request. Please try again later.`
  String get conflictError {
    return Intl.message(
      'The request could not be processed because of conflict in the request. Please try again later.',
      name: 'conflictError',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error. Please contact support for more details.`
  String get internalError {
    return Intl.message(
      'Internal server error. Please contact support for more details.',
      name: 'internalError',
      desc: '',
      args: [],
    );
  }

  /// `The server is temporarily unavailable. Please try again later.`
  String get serviceUnavailableError {
    return Intl.message(
      'The server is temporarily unavailable. Please try again later.',
      name: 'serviceUnavailableError',
      desc: '',
      args: [],
    );
  }

  /// `Looks like the server is taking too long to respond. This can be caused by either poor connectivity or an error with our servers. Please try again in a while.`
  String get timeoutError {
    return Intl.message(
      'Looks like the server is taking too long to respond. This can be caused by either poor connectivity or an error with our servers. Please try again in a while.',
      name: 'timeoutError',
      desc: '',
      args: [],
    );
  }

  /// `No Internet connection. Make sure Wi-Fi or cellular data is turned on, then try again.`
  String get noInternetError {
    return Intl.message(
      'No Internet connection. Make sure Wi-Fi or cellular data is turned on, then try again.',
      name: 'noInternetError',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred!`
  String get unknownError {
    return Intl.message(
      'Unexpected error occurred!',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Your email is not valid. Please enter a valid email.`
  String get authInvalidEmailError {
    return Intl.message(
      'Your email is not valid. Please enter a valid email.',
      name: 'authInvalidEmailError',
      desc: '',
      args: [],
    );
  }

  /// `Your password is incorrect. Please try again.`
  String get authWrongPasswordError {
    return Intl.message(
      'Your password is incorrect. Please try again.',
      name: 'authWrongPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `User with this email doesn't exist.`
  String get authUserNotFoundError {
    return Intl.message(
      'User with this email doesn\'t exist.',
      name: 'authUserNotFoundError',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been disabled. Please contact support.`
  String get authUserDisabledError {
    return Intl.message(
      'Your account has been disabled. Please contact support.',
      name: 'authUserDisabledError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong.',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Operation was canceled by user`
  String get operationCanceledByUser {
    return Intl.message(
      'Operation was canceled by user',
      name: 'operationCanceledByUser',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `This field is empty`
  String get thisFieldIsEmpty {
    return Intl.message(
      'This field is empty',
      name: 'thisFieldIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid mobile number`
  String get pleaseEnterValidNumber {
    return Intl.message(
      'Please enter a valid mobile number',
      name: 'pleaseEnterValidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get pleaseEnterValidEmail {
    return Intl.message(
      'Please enter a valid email address',
      name: 'pleaseEnterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid name`
  String get pleaseEnterValidName {
    return Intl.message(
      'Please enter a valid name',
      name: 'pleaseEnterValidName',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 2 Letters`
  String get nameMustBeAtLeast2Letters {
    return Intl.message(
      'Name must be at least 2 Letters',
      name: 'nameMustBeAtLeast2Letters',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at most 30 Letters`
  String get nameMustBeAtMost30Letters {
    return Intl.message(
      'Name must be at most 30 Letters',
      name: 'nameMustBeAtMost30Letters',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Continue`
  String get continue2 {
    return Intl.message('Continue', name: 'continue2', desc: '', args: []);
  }

  /// `Log out`
  String get logOut {
    return Intl.message('Log out', name: 'logOut', desc: '', args: []);
  }

  /// `OK`
  String get oK {
    return Intl.message('OK', name: 'oK', desc: '', args: []);
  }

  /// `User`
  String get user {
    return Intl.message('User', name: 'user', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Choose Option`
  String get chooseOption {
    return Intl.message(
      'Choose Option',
      name: 'chooseOption',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Looks like the server is taking to long to respond, this can be caused by either poor connectivity or an error with our servers. Please try again in a while`
  String get timeout_error {
    return Intl.message(
      'Looks like the server is taking to long to respond, this can be caused by either poor connectivity or an error with our servers. Please try again in a while',
      name: 'timeout_error',
      desc: '',
      args: [],
    );
  }

  /// `App Server Error, please contact support.`
  String get error_1000 {
    return Intl.message(
      'App Server Error, please contact support.',
      name: 'error_1000',
      desc: '',
      args: [],
    );
  }

  /// `Account not found or password invalid`
  String get error_401 {
    return Intl.message(
      'Account not found or password invalid',
      name: 'error_401',
      desc: '',
      args: [],
    );
  }

  /// `forbidden`
  String get error_403 {
    return Intl.message('forbidden', name: 'error_403', desc: '', args: []);
  }

  /// `Request page not found please contact support for more details.`
  String get error_404 {
    return Intl.message(
      'Request page not found please contact support for more details.',
      name: 'error_404',
      desc: '',
      args: [],
    );
  }

  /// `Session expired, please login again`
  String get error_479 {
    return Intl.message(
      'Session expired, please login again',
      name: 'error_479',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error, please contact support for more details.`
  String get error_500 {
    return Intl.message(
      'Internal server error, please contact support for more details.',
      name: 'error_500',
      desc: '',
      args: [],
    );
  }

  /// `Service not available`
  String get error_503 {
    return Intl.message(
      'Service not available',
      name: 'error_503',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred!`
  String get error_occurred {
    return Intl.message(
      'Unexpected error occurred!',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Sign in to your account`
  String get signInToYourAccount {
    return Intl.message(
      'Sign in to your account',
      name: 'signInToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message('Sign in', name: 'signIn', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Phone`
  String get phone {
    return Intl.message('Phone', name: 'phone', desc: '', args: []);
  }

  /// `Email or password is incorrect. Please try again.`
  String get emailOrPasswordIsInCorrect {
    return Intl.message(
      'Email or password is incorrect. Please try again.',
      name: 'emailOrPasswordIsInCorrect',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Arabic`
  String get arabic {
    return Intl.message('Arabic', name: 'arabic', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Profile Settings`
  String get profileSettings {
    return Intl.message(
      'Profile Settings',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `App Settings`
  String get appSettings {
    return Intl.message(
      'App Settings',
      name: 'appSettings',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Select Your Preferred Language`
  String get selectYourPreferredLanguage {
    return Intl.message(
      'Select Your Preferred Language',
      name: 'selectYourPreferredLanguage',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myProfile {
    return Intl.message('My Profile', name: 'myProfile', desc: '', args: []);
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Enter Your Name`
  String get enterYourName {
    return Intl.message(
      'Enter Your Name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Number`
  String get enterYourNumber {
    return Intl.message(
      'Enter Your Number',
      name: 'enterYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Please enable location services, and try again`
  String get please_enable_location_service {
    return Intl.message(
      'Please enable location services, and try again',
      name: 'please_enable_location_service',
      desc: '',
      args: [],
    );
  }

  /// `Without location permission you can't deliver orders`
  String get location_permission_required {
    return Intl.message(
      'Without location permission you can\'t deliver orders',
      name: 'location_permission_required',
      desc: '',
      args: [],
    );
  }

  /// `Without tracking permission you can't deliver orders`
  String get tracking_permission_required {
    return Intl.message(
      'Without tracking permission you can\'t deliver orders',
      name: 'tracking_permission_required',
      desc: '',
      args: [],
    );
  }

  /// `It takes long time, please check your internet connection and try again`
  String get location_timeout_error {
    return Intl.message(
      'It takes long time, please check your internet connection and try again',
      name: 'location_timeout_error',
      desc: '',
      args: [],
    );
  }

  /// `Please wait`
  String get please_wait {
    return Intl.message('Please wait', name: 'please_wait', desc: '', args: []);
  }

  /// `Please wait until your location is determined.`
  String get determine_location {
    return Intl.message(
      'Please wait until your location is determined.',
      name: 'determine_location',
      desc: '',
      args: [],
    );
  }

  /// `There"re no orders to be delivered.`
  String get thereAreNoOrders {
    return Intl.message(
      'There"re no orders to be delivered.',
      name: 'thereAreNoOrders',
      desc: '',
      args: [],
    );
  }

  /// `Order Upcoming`
  String get orderUpcoming {
    return Intl.message(
      'Order Upcoming',
      name: 'orderUpcoming',
      desc: '',
      args: [],
    );
  }

  /// `Order OnTheWay`
  String get orderOnTheWay {
    return Intl.message(
      'Order OnTheWay',
      name: 'orderOnTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Deliver`
  String get deliver {
    return Intl.message('Deliver', name: 'deliver', desc: '', args: []);
  }

  /// `Show Map`
  String get showMap {
    return Intl.message('Show Map', name: 'showMap', desc: '', args: []);
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Id`
  String get id {
    return Intl.message('Id', name: 'id', desc: '', args: []);
  }

  /// `Status`
  String get status {
    return Intl.message('Status', name: 'status', desc: '', args: []);
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `User Details`
  String get userDetails {
    return Intl.message(
      'User Details',
      name: 'userDetails',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message('Note', name: 'note', desc: '', args: []);
  }

  /// `None`
  String get none {
    return Intl.message('None', name: 'none', desc: '', args: []);
  }

  /// `Reason for canceling the order`
  String get reasonForCancelingTheOrder {
    return Intl.message(
      'Reason for canceling the order',
      name: 'reasonForCancelingTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Type your note`
  String get typeYourNote {
    return Intl.message(
      'Type your note',
      name: 'typeYourNote',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Cancel the order?`
  String get cancelTheOrder {
    return Intl.message(
      'Cancel the order?',
      name: 'cancelTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to Deliver the order?`
  String get doYouWantToDeliverTheOrder {
    return Intl.message(
      'Do you want to Deliver the order?',
      name: 'doYouWantToDeliverTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to Confirm the order?`
  String get doYouWantToConfirmTheOrder {
    return Intl.message(
      'Do you want to Confirm the order?',
      name: 'doYouWantToConfirmTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `You can"t proceed this order!`
  String get youCanNotProceedThisOrder {
    return Intl.message(
      'You can"t proceed this order!',
      name: 'youCanNotProceedThisOrder',
      desc: '',
      args: [],
    );
  }

  /// `You can only proceed orders that you"re delivering.`
  String get youCanOnlyProceedOrdersYouDelivering {
    return Intl.message(
      'You can only proceed orders that you"re delivering.',
      name: 'youCanOnlyProceedOrdersYouDelivering',
      desc: '',
      args: [],
    );
  }

  /// `Arrived Location!`
  String get arrivedLocation {
    return Intl.message(
      'Arrived Location!',
      name: 'arrivedLocation',
      desc: '',
      args: [],
    );
  }

  /// `Pick Up`
  String get pickUp {
    return Intl.message('Pick Up', name: 'pickUp', desc: '', args: []);
  }

  /// `Do you want to confirm that you've picked up the order?`
  String get doYouWantToConfirmPickup {
    return Intl.message(
      'Do you want to confirm that you\'ve picked up the order?',
      name: 'doYouWantToConfirmPickup',
      desc: '',
      args: [],
    );
  }

  /// `Arrived at Buyer`
  String get arrivedAtBuyer {
    return Intl.message(
      'Arrived at Buyer',
      name: 'arrivedAtBuyer',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to confirm that you've arrived at the buyer's location?`
  String get doYouWantToConfirmArrivalAtBuyer {
    return Intl.message(
      'Do you want to confirm that you\'ve arrived at the buyer\'s location?',
      name: 'doYouWantToConfirmArrivalAtBuyer',
      desc: '',
      args: [],
    );
  }

  /// `You"re close to location area. Order delivery confirmation has enabled.`
  String get youAreCloseToLocationArea {
    return Intl.message(
      'You"re close to location area. Order delivery confirmation has enabled.',
      name: 'youAreCloseToLocationArea',
      desc: '',
      args: [],
    );
  }

  /// `Search for a place...`
  String get searchForAPlace {
    return Intl.message(
      'Search for a place...',
      name: 'searchForAPlace',
      desc: '',
      args: [],
    );
  }

  /// `My current location`
  String get myCurrentLocation {
    return Intl.message(
      'My current location',
      name: 'myCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Please search for the location!`
  String get pleaseSearchForLocation {
    return Intl.message(
      'Please search for the location!',
      name: 'pleaseSearchForLocation',
      desc: '',
      args: [],
    );
  }

  /// `User hasn't provided his location point.`
  String get userHasNotProvidedLocation {
    return Intl.message(
      'User hasn\'t provided his location point.',
      name: 'userHasNotProvidedLocation',
      desc: '',
      args: [],
    );
  }

  /// `Working hours`
  String get working_hours {
    return Intl.message(
      'Working hours',
      name: 'working_hours',
      desc: '',
      args: [],
    );
  }

  /// `Work Hours Settings`
  String get work_hours_settings {
    return Intl.message(
      'Work Hours Settings',
      name: 'work_hours_settings',
      desc: '',
      args: [],
    );
  }

  /// `Please set your work hours.`
  String get please_set_work_hours {
    return Intl.message(
      'Please set your work hours.',
      name: 'please_set_work_hours',
      desc: '',
      args: [],
    );
  }

  /// `Set Work Hours`
  String get set_work_hours {
    return Intl.message(
      'Set Work Hours',
      name: 'set_work_hours',
      desc: '',
      args: [],
    );
  }

  /// `Work hours set successfully.`
  String get work_hours_set {
    return Intl.message(
      'Work hours set successfully.',
      name: 'work_hours_set',
      desc: '',
      args: [],
    );
  }

  /// `Working Zone`
  String get working_zone {
    return Intl.message(
      'Working Zone',
      name: 'working_zone',
      desc: '',
      args: [],
    );
  }

  /// `Please select a location by tapping the map.`
  String get please_select_location_by_tapping {
    return Intl.message(
      'Please select a location by tapping the map.',
      name: 'please_select_location_by_tapping',
      desc: '',
      args: [],
    );
  }

  /// `Pick a Location`
  String get pick_location {
    return Intl.message(
      'Pick a Location',
      name: 'pick_location',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Location`
  String get confirm_location {
    return Intl.message(
      'Confirm Location',
      name: 'confirm_location',
      desc: '',
      args: [],
    );
  }

  /// `Operating Region Center`
  String get operating_region_center {
    return Intl.message(
      'Operating Region Center',
      name: 'operating_region_center',
      desc: '',
      args: [],
    );
  }

  /// `Set Location`
  String get set_location {
    return Intl.message(
      'Set Location',
      name: 'set_location',
      desc: '',
      args: [],
    );
  }

  /// `Operating Radius (km)`
  String get operating_radius_km {
    return Intl.message(
      'Operating Radius (km)',
      name: 'operating_radius_km',
      desc: '',
      args: [],
    );
  }

  /// `Please select a location`
  String get please_select_location {
    return Intl.message(
      'Please select a location',
      name: 'please_select_location',
      desc: '',
      args: [],
    );
  }

  /// `Save Working Zone`
  String get save_working_zone {
    return Intl.message(
      'Save Working Zone',
      name: 'save_working_zone',
      desc: '',
      args: [],
    );
  }

  /// `Timezone: {timezone}`
  String timezone(Object timezone) {
    return Intl.message(
      'Timezone: $timezone',
      name: 'timezone',
      desc: '',
      args: [timezone],
    );
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `End`
  String get end {
    return Intl.message('End', name: 'end', desc: '', args: []);
  }

  /// `Save Working Hours`
  String get save_working_hours {
    return Intl.message(
      'Save Working Hours',
      name: 'save_working_hours',
      desc: '',
      args: [],
    );
  }

  /// `Seller`
  String get seller {
    return Intl.message('Seller', name: 'seller', desc: '', args: []);
  }

  /// `Delivery Progress`
  String get deliveryStageTrackerTitle {
    return Intl.message(
      'Delivery Progress',
      name: 'deliveryStageTrackerTitle',
      desc: '',
      args: [],
    );
  }

  /// `To Seller`
  String get deliveryStagePickup {
    return Intl.message(
      'To Seller',
      name: 'deliveryStagePickup',
      desc: '',
      args: [],
    );
  }

  /// `Picked Up`
  String get deliveryStagePicked {
    return Intl.message(
      'Picked Up',
      name: 'deliveryStagePicked',
      desc: '',
      args: [],
    );
  }

  /// `To Buyer`
  String get deliveryStageDropoff {
    return Intl.message(
      'To Buyer',
      name: 'deliveryStageDropoff',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get deliveryStageCompleted {
    return Intl.message(
      'Delivered',
      name: 'deliveryStageCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Pickup`
  String get deliveryStagePickedUpAction {
    return Intl.message(
      'Confirm Pickup',
      name: 'deliveryStagePickedUpAction',
      desc: '',
      args: [],
    );
  }

  /// `Arrived at Buyer`
  String get deliveryStageAtBuyerAction {
    return Intl.message(
      'Arrived at Buyer',
      name: 'deliveryStageAtBuyerAction',
      desc: '',
      args: [],
    );
  }

  /// `Complete Delivery`
  String get deliveryStageCompletedAction {
    return Intl.message(
      'Complete Delivery',
      name: 'deliveryStageCompletedAction',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
