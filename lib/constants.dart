/// Application-wide constants and configuration flags
class AppConstants {
  AppConstants._(); // Private constructor to prevent instantiation

  /// When true, the app will enforce delivery time restrictions
  /// Orders will only be available for delivery when they are within the appropriate time window
  /// When false, all orders can be delivered at any time
  static bool enforceDeliveryTimeRestrictions = true;

  /// When true, the app will enforce the upper time limit for deliveries
  /// Orders will not be available for delivery after the scheduled time + buffer
  /// When false, late deliveries can still be processed (recommended)
  static bool enforceUpperTimeLimit = false;

  /// Buffer time before the scheduled delivery (in minutes)
  /// Orders will become available for delivery this many minutes before the scheduled time
  static const int deliveryTimeBufferBeforeMinutes = 30;

  /// Buffer time after the scheduled delivery (in minutes)
  /// Orders will remain available for delivery this many minutes after the scheduled time
  static const int deliveryTimeBufferAfterMinutes = 30;
}
