import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'Y0 Restaurant'**
  String get appTitle;

  /// Login button text
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// Username input label
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// Password input label
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Tables section title
  ///
  /// In en, this message translates to:
  /// **'Tables'**
  String get tables;

  /// Menu section title
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// Kitchen section title
  ///
  /// In en, this message translates to:
  /// **'Kitchen'**
  String get kitchen;

  /// Invoices section title
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get invoices;

  /// Orders section title
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// Settings section title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Logout button text
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Welcome message
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// Loading indicator text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Error title
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Confirm button text
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Delete button text
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Edit button text
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Add button text
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Search placeholder text
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Filter button text
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// Sort button text
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// Total label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// Subtotal label
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// Tax label
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// Discount label
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// Quantity label
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// Price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// Name label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Email label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Phone label
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// Address label
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// Date label
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// Time label
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// Status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// Active status
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// Inactive status
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// Pending status
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// Completed status
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// Cancelled status
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// Available status
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// Unavailable status
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get unavailable;

  /// Yes option
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No option
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// OK button text
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Back button text
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Next status
  ///
  /// In en, this message translates to:
  /// **'next'**
  String get next;

  /// Previous status
  ///
  /// In en, this message translates to:
  /// **'previous'**
  String get previous;

  /// First position
  ///
  /// In en, this message translates to:
  /// **'first'**
  String get first;

  /// Last page text
  ///
  /// In en, this message translates to:
  /// **'Last'**
  String get last;

  /// Page label
  ///
  /// In en, this message translates to:
  /// **'Page'**
  String get page;

  /// Page indicator separator
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get of;

  /// Items count label
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// Single item label
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get item;

  /// Empty state message
  ///
  /// In en, this message translates to:
  /// **'No data found'**
  String get noDataFound;

  /// Search empty state message
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// Try again button text
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// Refresh button text
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// Download button text
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// Upload button text
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// Print button text
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// Share button text
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Copy button text
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// Paste button text
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// Select button text
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// Select All button text
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// Clear button text
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Reset button text
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Apply button text
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// Submit button text
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// Update button text
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// Create button text
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// View button text
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// Details button text
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// More options button text
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// Less options button text
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get less;

  /// Expand button text
  ///
  /// In en, this message translates to:
  /// **'Expand'**
  String get expand;

  /// Collapse button text
  ///
  /// In en, this message translates to:
  /// **'Collapse'**
  String get collapse;

  /// Open button text
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// Start button text
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// Stop button text
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// Pause button text
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// Resume button text
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resume;

  /// Continue button text
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueAction;

  /// Finish button text
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// Complete button text
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// Skip button text
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Ignore button text
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get ignore;

  /// Accept button text
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// Reject button text
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// Approve button text
  ///
  /// In en, this message translates to:
  /// **'Approve'**
  String get approve;

  /// Deny button text
  ///
  /// In en, this message translates to:
  /// **'Deny'**
  String get deny;

  /// Allow button text
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// Block button text
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get block;

  /// Enable button text
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// Disable button text
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disable;

  /// Show button text
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// Hide button text
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hide;

  /// Visible status
  ///
  /// In en, this message translates to:
  /// **'Visible'**
  String get visible;

  /// Hidden status
  ///
  /// In en, this message translates to:
  /// **'Hidden'**
  String get hidden;

  /// Public status
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get public;

  /// Private status
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get private;

  /// Internal status
  ///
  /// In en, this message translates to:
  /// **'Internal'**
  String get internal;

  /// External status
  ///
  /// In en, this message translates to:
  /// **'External'**
  String get external;

  /// Local status
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get local;

  /// Remote status
  ///
  /// In en, this message translates to:
  /// **'Remote'**
  String get remote;

  /// Online status
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// Offline status
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline;

  /// Connected status
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get connected;

  /// Disconnected status
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get disconnected;

  /// Syncing status
  ///
  /// In en, this message translates to:
  /// **'Syncing'**
  String get syncing;

  /// Synced status
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get synced;

  /// Unsynced status
  ///
  /// In en, this message translates to:
  /// **'Unsynced'**
  String get unsynced;

  /// Draft status
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get draft;

  /// Published status
  ///
  /// In en, this message translates to:
  /// **'Published'**
  String get published;

  /// Archived status
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get archived;

  /// Deleted status
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get deleted;

  /// Restored status
  ///
  /// In en, this message translates to:
  /// **'Restored'**
  String get restored;

  /// Imported status
  ///
  /// In en, this message translates to:
  /// **'Imported'**
  String get imported;

  /// Exported status
  ///
  /// In en, this message translates to:
  /// **'Exported'**
  String get exported;

  /// Importing status
  ///
  /// In en, this message translates to:
  /// **'Importing'**
  String get importing;

  /// Exporting status
  ///
  /// In en, this message translates to:
  /// **'Exporting'**
  String get exporting;

  /// Processing status
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// Processed status
  ///
  /// In en, this message translates to:
  /// **'Processed'**
  String get processed;

  /// Failed status
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// Success status
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Warning status
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// Info status
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// Debug status
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debug;

  /// Trace status
  ///
  /// In en, this message translates to:
  /// **'Trace'**
  String get trace;

  /// Critical status
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get critical;

  /// High priority
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// Medium priority
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// Low priority
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// Normal priority
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

  /// Urgent priority
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get urgent;

  /// Important priority
  ///
  /// In en, this message translates to:
  /// **'Important'**
  String get important;

  /// Optional priority
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// Required priority
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// Mandatory priority
  ///
  /// In en, this message translates to:
  /// **'Mandatory'**
  String get mandatory;

  /// Recommended priority
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// Suggested priority
  ///
  /// In en, this message translates to:
  /// **'Suggested'**
  String get suggested;

  /// Default option
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultOption;

  /// Custom option
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// Other option
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// None option
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// All option
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Any option
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get any;

  /// Some option
  ///
  /// In en, this message translates to:
  /// **'Some'**
  String get some;

  /// Many option
  ///
  /// In en, this message translates to:
  /// **'Many'**
  String get many;

  /// Few option
  ///
  /// In en, this message translates to:
  /// **'Few'**
  String get few;

  /// Several option
  ///
  /// In en, this message translates to:
  /// **'Several'**
  String get several;

  /// Multiple option
  ///
  /// In en, this message translates to:
  /// **'Multiple'**
  String get multiple;

  /// Single option
  ///
  /// In en, this message translates to:
  /// **'Single'**
  String get single;

  /// Double option
  ///
  /// In en, this message translates to:
  /// **'Double'**
  String get double;

  /// Triple option
  ///
  /// In en, this message translates to:
  /// **'Triple'**
  String get triple;

  /// Today label
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// Yesterday label
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// Tomorrow label
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// This Week label
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get thisWeek;

  /// Last Week label
  ///
  /// In en, this message translates to:
  /// **'Last Week'**
  String get lastWeek;

  /// Next Week label
  ///
  /// In en, this message translates to:
  /// **'Next Week'**
  String get nextWeek;

  /// This Month label
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get thisMonth;

  /// Last Month label
  ///
  /// In en, this message translates to:
  /// **'Last Month'**
  String get lastMonth;

  /// Next Month label
  ///
  /// In en, this message translates to:
  /// **'Next Month'**
  String get nextMonth;

  /// This Year label
  ///
  /// In en, this message translates to:
  /// **'This Year'**
  String get thisYear;

  /// Last Year label
  ///
  /// In en, this message translates to:
  /// **'Last Year'**
  String get lastYear;

  /// Next Year label
  ///
  /// In en, this message translates to:
  /// **'Next Year'**
  String get nextYear;

  /// Now label
  ///
  /// In en, this message translates to:
  /// **'Now'**
  String get now;

  /// Later label
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// Soon label
  ///
  /// In en, this message translates to:
  /// **'Soon'**
  String get soon;

  /// Never label
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// Always label
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get always;

  /// Sometimes label
  ///
  /// In en, this message translates to:
  /// **'Sometimes'**
  String get sometimes;

  /// Rarely label
  ///
  /// In en, this message translates to:
  /// **'Rarely'**
  String get rarely;

  /// Often label
  ///
  /// In en, this message translates to:
  /// **'Often'**
  String get often;

  /// Frequently label
  ///
  /// In en, this message translates to:
  /// **'Frequently'**
  String get frequently;

  /// Occasionally label
  ///
  /// In en, this message translates to:
  /// **'Occasionally'**
  String get occasionally;

  /// Daily label
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// Weekly label
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// Monthly label
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// Yearly label
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// Hourly label
  ///
  /// In en, this message translates to:
  /// **'Hourly'**
  String get hourly;

  /// Minute label
  ///
  /// In en, this message translates to:
  /// **'Minute'**
  String get minute;

  /// Hour label
  ///
  /// In en, this message translates to:
  /// **'Hour'**
  String get hour;

  /// Day label
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// Week label
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// Month label
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// Year label
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// Second position
  ///
  /// In en, this message translates to:
  /// **'second'**
  String get second;

  /// Milliseconds label
  ///
  /// In en, this message translates to:
  /// **'Milliseconds'**
  String get milliseconds;

  /// Seconds label
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get seconds;

  /// Minutes label
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get minutes;

  /// Hours label
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get hours;

  /// Days label
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get days;

  /// Weeks label
  ///
  /// In en, this message translates to:
  /// **'Weeks'**
  String get weeks;

  /// Months label
  ///
  /// In en, this message translates to:
  /// **'Months'**
  String get months;

  /// Years label
  ///
  /// In en, this message translates to:
  /// **'Years'**
  String get years;

  /// Time ago suffix
  ///
  /// In en, this message translates to:
  /// **'ago'**
  String get ago;

  /// Time remaining suffix
  ///
  /// In en, this message translates to:
  /// **'remaining'**
  String get remaining;

  /// Time left suffix
  ///
  /// In en, this message translates to:
  /// **'left'**
  String get left;

  /// Overdue status
  ///
  /// In en, this message translates to:
  /// **'overdue'**
  String get overdue;

  /// Upcoming status
  ///
  /// In en, this message translates to:
  /// **'upcoming'**
  String get upcoming;

  /// Past status
  ///
  /// In en, this message translates to:
  /// **'past'**
  String get past;

  /// Future status
  ///
  /// In en, this message translates to:
  /// **'future'**
  String get future;

  /// Current status
  ///
  /// In en, this message translates to:
  /// **'current'**
  String get current;

  /// Third position
  ///
  /// In en, this message translates to:
  /// **'third'**
  String get third;

  /// Fourth position
  ///
  /// In en, this message translates to:
  /// **'fourth'**
  String get fourth;

  /// Fifth position
  ///
  /// In en, this message translates to:
  /// **'fifth'**
  String get fifth;

  /// Sixth position
  ///
  /// In en, this message translates to:
  /// **'sixth'**
  String get sixth;

  /// Seventh position
  ///
  /// In en, this message translates to:
  /// **'seventh'**
  String get seventh;

  /// Eighth position
  ///
  /// In en, this message translates to:
  /// **'eighth'**
  String get eighth;

  /// Ninth position
  ///
  /// In en, this message translates to:
  /// **'ninth'**
  String get ninth;

  /// Tenth position
  ///
  /// In en, this message translates to:
  /// **'tenth'**
  String get tenth;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
