import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryLocalizationHelper {
  static const Map<String, Map<String, String>> _localizedCountryNames = {
    'AF': {"en": 'Afghanistan', 'ar': 'أفغانستان'},
    'AX': {'en': 'Åland Islands', 'ar': 'جزر أولاند'},
    'AL': {'en': 'Albania', 'ar': 'ألبانيا'},
    'DZ': {'en': 'Algeria', 'ar': 'الجزائر'},
    'AS': {'en': 'American Samoa', 'ar': 'ساموا الأمريكية'},
    'AD': {'en': 'Andorra', 'ar': 'أندورا'},
    'AO': {'en': 'Angola', 'ar': 'أنغولا'},
    'AI': {'en': 'Anguilla', 'ar': 'أنغويلا'},
    'AQ': {'en': 'Antarctica', 'ar': 'أنتاركتيكا'},
    'AG': {'en': 'Antigua and Barbuda', 'ar': 'أنتيغوا وبربودا'},
    'AR': {'en': 'Argentina', 'ar': 'الأرجنتين'},
    'AM': {'en': 'Armenia', 'ar': 'أرمينيا'},
    'AW': {'en': 'Aruba', 'ar': 'أروبا'},
    'AU': {'en': 'Australia', 'ar': 'أستراليا'},
    'AT': {'en': 'Austria', 'ar': 'النمسا'},
    'AZ': {'en': 'Azerbaijan', 'ar': 'أذربيجان'},
    'BS': {'en': 'Bahamas', 'ar': 'الباهاما'},
    'BH': {'en': 'Bahrain', 'ar': 'البحرين'},
    'BD': {'en': 'Bangladesh', 'ar': 'بنغلاديش'},
    'BB': {'en': 'Barbados', 'ar': 'بربادوس'},
    'BY': {'en': 'Belarus', 'ar': 'بيلاروسيا'},
    'BE': {'en': 'Belgium', 'ar': 'بلجيكا'},
    'BZ': {'en': 'Belize', 'ar': 'بليز'},
    'BJ': {'en': 'Benin', 'ar': 'بنين'},
    'BM': {'en': 'Bermuda', 'ar': 'برمودا'},
    'BT': {'en': 'Bhutan', 'ar': 'بوتان'},
    'BO': {'en': 'Bolivia', 'ar': 'بوليفيا'},
    'BA': {'en': 'Bosnia and Herzegovina', 'ar': 'البوسنة والهرسك'},
    'BW': {'en': 'Botswana', 'ar': 'بوتسوانا'},
    'BV': {'en': 'Bouvet Island', 'ar': 'جزيرة بوفيه'},
    'BR': {'en': 'Brazil', 'ar': 'البرازيل'},
    'IO': {'en': 'British Indian Ocean Territory', 'ar': 'إقليم المحيط الهندي البريطاني'},
    'BN': {'en': 'Brunei Darussalam', 'ar': 'بروناي دار السلام'},
    'BG': {'en': 'Bulgaria', 'ar': 'بلغاريا'},
    'BF': {'en': 'Burkina Faso', 'ar': 'بوركينا فاسو'},
    'BI': {'en': 'Burundi', 'ar': 'بوروندي'},
    'KH': {'en': 'Cambodia', 'ar': 'كمبوديا'},
    'CM': {'en': 'Cameroon', 'ar': 'الكاميرون'},
    'CA': {'en': 'Canada', 'ar': 'كندا'},
    'CV': {'en': 'Cape Verde', 'ar': 'الرأس الأخضر'},
    'KY': {'en': 'Cayman Islands', 'ar': 'جزر كايمان'},
    'CF': {'en': 'Central African Republic', 'ar': 'جمهورية أفريقيا الوسطى'},
    'TD': {'en': 'Chad', 'ar': 'تشاد'},
    'CL': {'en': 'Chile', 'ar': 'تشيلي'},
    'CN': {'en': 'China', 'ar': 'الصين'},
    'CX': {'en': 'Christmas Island', 'ar': 'جزيرة عيد الميلاد'},
    'CC': {'en': 'Cocos (Keeling) Islands', 'ar': 'جزر كوكوس (كيلينغ)'},
    'CO': {'en': 'Colombia', 'ar': 'كولومبيا'},
    'KM': {'en': 'Comoros', 'ar': 'جزر القمر'},
    'CG': {'en': 'Congo', 'ar': 'الكونغو'},
    'CD': {'en': 'Congo, Democratic Republic', 'ar': 'جمهورية الكونغو الديمقراطية'},
    'CK': {'en': 'Cook Islands', 'ar': 'جزر كوك'},
    'CR': {'en': 'Costa Rica', 'ar': 'كوستاريكا'},
    'CI': {'en': 'Côte d\'Ivoire', 'ar': 'ساحل العاج'},
    'HR': {'en': 'Croatia', 'ar': 'كرواتيا'},
    'CU': {'en': 'Cuba', 'ar': 'كوبا'},
    'CY': {'en': 'Cyprus', 'ar': 'قبرص'},
    'CZ': {'en': 'Czech Republic', 'ar': 'جمهورية التشيك'},
    'DK': {'en': 'Denmark', 'ar': 'الدنمارك'},
    'DJ': {'en': 'Djibouti', 'ar': 'جيبوتي'},
    'DM': {'en': 'Dominica', 'ar': 'دومينيكا'},
    'DO': {'en': 'Dominican Republic', 'ar': 'جمهورية الدومينيكان'},
    'EC': {'en': 'Ecuador', 'ar': 'الإكوادور'},
    'EG': {'en': 'Egypt', 'ar': 'مصر'},
    'SV': {'en': 'El Salvador', 'ar': 'السلفادور'},
    'GQ': {'en': 'Equatorial Guinea', 'ar': 'غينيا الاستوائية'},
    'ER': {'en': 'Eritrea', 'ar': 'إريتريا'},
    'EE': {'en': 'Estonia', 'ar': 'إستونيا'},
    'ET': {'en': 'Ethiopia', 'ar': 'إثيوبيا'},
    'FK': {'en': 'Falkland Islands', 'ar': 'جزر فوكلاند'},
    'FO': {'en': 'Faroe Islands', 'ar': 'جزر فارو'},
    'FJ': {'en': 'Fiji', 'ar': 'فيجي'},
    'FI': {'en': 'Finland', 'ar': 'فنلندا'},
    'FR': {'en': 'France', 'ar': 'فرنسا'},
    'GF': {'en': 'French Guiana', 'ar': 'غويانا الفرنسية'},
    'PF': {'en': 'French Polynesia', 'ar': 'بولينيزيا الفرنسية'},
    'TF': {'en': 'French Southern Territories', 'ar': 'الأراضي الجنوبية الفرنسية'},
    'GA': {'en': 'Gabon', 'ar': 'الغابون'},
    'GM': {'en': 'Gambia', 'ar': 'غامبيا'},
    'GE': {'en': 'Georgia', 'ar': 'جورجيا'},
    'DE': {'en': 'Germany', 'ar': 'ألمانيا'},
    'GH': {'en': 'Ghana', 'ar': 'غانا'},
    'GI': {'en': 'Gibraltar', 'ar': 'جبل طارق'},
    'GR': {'en': 'Greece', 'ar': 'اليونان'},
    'GL': {'en': 'Greenland', 'ar': 'جرينلاند'},
    'GD': {'en': 'Grenada', 'ar': 'غرينادا'},
    'GP': {'en': 'Guadeloupe', 'ar': 'غوادلوب'},
    'GU': {'en': 'Guam', 'ar': 'غوام'},
    'GT': {'en': 'Guatemala', 'ar': 'غواتيمالا'},
    'GG': {'en': 'Guernsey', 'ar': 'غيرنزي'},
    'GN': {'en': 'Guinea', 'ar': 'غينيا'},
    'GW': {'en': 'Guinea-Bissau', 'ar': 'غينيا بيساو'},
    'GY': {'en': 'Guyana', 'ar': 'غيانا'},
    'HT': {'en': 'Haiti', 'ar': 'هايتي'},
    'HM': {'en': 'Heard Island', 'ar': 'جزيرة هيرد'},
    'VA': {'en': 'Holy See (Vatican City)', 'ar': 'الكرسي الرسولي (مدينة الفاتيكان)'},
    'HN': {'en': 'Honduras', 'ar': 'هندوراس'},
    'HK': {'en': 'Hong Kong', 'ar': 'هونغ كونغ'},
    'HU': {'en': 'Hungary', 'ar': 'المجر'},
    'IS': {'en': 'Iceland', 'ar': 'آيسلندا'},
    'IN': {'en': 'India', 'ar': 'الهند'},
    'ID': {'en': 'Indonesia', 'ar': 'إندونيسيا'},
    'IR': {'en': 'Iran', 'ar': 'إيران'},
    'IQ': {'en': 'Iraq', 'ar': 'العراق'},
    'IE': {'en': 'Ireland', 'ar': 'أيرلندا'},
    'IM': {'en': 'Isle of Man', 'ar': 'جزيرة مان'},
    'IL': {'en': 'Israel', 'ar': 'إسرائيل'},
    'IT': {'en': 'Italy', 'ar': 'إيطاليا'},
    'JM': {'en': 'Jamaica', 'ar': 'جامايكا'},
    'JP': {'en': 'Japan', 'ar': 'اليابان'},
    'JE': {'en': 'Jersey', 'ar': 'جيرزي'},
    'JO': {'en': 'Jordan', 'ar': 'الأردن'},
    'KZ': {'en': 'Kazakhstan', 'ar': 'كازاخستان'},
    'KE': {'en': 'Kenya', 'ar': 'كينيا'},
    'KI': {'en': 'Kiribati', 'ar': 'كيريباتي'},
    'KP': {'en': 'North Korea', 'ar': 'كوريا الشمالية'},
    'KR': {'en': 'South Korea', 'ar': 'كوريا الجنوبية'},
    'KW': {'en': 'Kuwait', 'ar': 'الكويت'},
    'KG': {'en': 'Kyrgyzstan', 'ar': 'قيرغيزستان'},
    'LA': {'en': 'Laos', 'ar': 'لاوس'},
    'LV': {'en': 'Latvia', 'ar': 'لاتفيا'},
    'LB': {'en': 'Lebanon', 'ar': 'لبنان'},
    'LS': {'en': 'Lesotho', 'ar': 'ليسوتو'},
    'LR': {'en': 'Liberia', 'ar': 'ليبيريا'},
    'LY': {'en': 'Libya', 'ar': 'ليبيا'},
    'LI': {'en': 'Liechtenstein', 'ar': 'ليختنشتاين'},
    'LT': {'en': 'Lithuania', 'ar': 'ليتوانيا'},
    'LU': {'en': 'Luxembourg', 'ar': 'لوكسمبورغ'},
    'MO': {'en': 'Macao', 'ar': 'ماكاو'},
    'MK': {'en': 'North Macedonia', 'ar': 'مقدونيا الشمالية'},
    'MG': {'en': 'Madagascar', 'ar': 'مدغشقر'},
    'MW': {'en': 'Malawi', 'ar': 'ملاوي'},
    'MY': {'en': 'Malaysia', 'ar': 'ماليزيا'},
    'MV': {'en': 'Maldives', 'ar': 'جزر المالديف'},
    'ML': {'en': 'Mali', 'ar': 'مالي'},
    'MT': {'en': 'Malta', 'ar': 'مالطا'},
    'MH': {'en': 'Marshall Islands', 'ar': 'جزر مارشال'},
    'MQ': {'en': 'Martinique', 'ar': 'مارتينيك'},
    'MR': {'en': 'Mauritania', 'ar': 'موريتانيا'},
    'MU': {'en': 'Mauritius', 'ar': 'موريشيوس'},
    'YT': {'en': 'Mayotte', 'ar': 'مايوت'},
    'MX': {'en': 'Mexico', 'ar': 'المكسيك'},
    'FM': {'en': 'Micronesia', 'ar': 'ميكرونيزيا'},
    'MD': {'en': 'Moldova', 'ar': 'مولدوفا'},
    'MC': {'en': 'Monaco', 'ar': 'موناكو'},
    'MN': {'en': 'Mongolia', 'ar': 'منغوليا'},
    'ME': {'en': 'Montenegro', 'ar': 'الجبل الأسود'},
    'MS': {'en': 'Montserrat', 'ar': 'مونتسيرات'},
    'MA': {'en': 'Morocco', 'ar': 'المغرب'},
    'MZ': {'en': 'Mozambique', 'ar': 'موزمبيق'},
    'MM': {'en': 'Myanmar', 'ar': 'ميانمار'},
    'NA': {'en': 'Namibia', 'ar': 'ناميبيا'},
    'NR': {'en': 'Nauru', 'ar': 'ناورو'},
    'NP': {'en': 'Nepal', 'ar': 'نيبال'},
    'NL': {'en': 'Netherlands', 'ar': 'هولندا'},
    'NC': {'en': 'New Caledonia', 'ar': 'كاليدونيا الجديدة'},
    'NZ': {'en': 'New Zealand', 'ar': 'نيوزيلندا'},
    'NI': {'en': 'Nicaragua', 'ar': 'نيكاراغوا'},
    'NE': {'en': 'Niger', 'ar': 'النيجر'},
    'NG': {'en': 'Nigeria', 'ar': 'نيجيريا'},
    'NU': {'en': 'Niue', 'ar': 'نيوي'},
    'NF': {'en': 'Norfolk Island', 'ar': 'جزيرة نورفولك'},
    'MP': {'en': 'Northern Mariana Islands', 'ar': 'جزر ماريانا الشمالية'},
    'NO': {'en': 'Norway', 'ar': 'النرويج'},
    'OM': {'en': 'Oman', 'ar': 'عمان'},
    'PK': {'en': 'Pakistan', 'ar': 'باكستان'},
    'PW': {'en': 'Palau', 'ar': 'بالاو'},
    'PS': {'en': 'Palestine', 'ar': 'فلسطين'},
    'PA': {'en': 'Panama', 'ar': 'بنما'},
    'PG': {'en': 'Papua New Guinea', 'ar': 'بابوا غينيا الجديدة'},
    'PY': {'en': 'Paraguay', 'ar': 'باراغواي'},
    'PE': {'en': 'Peru', 'ar': 'بيرو'},
    'PH': {'en': 'Philippines', 'ar': 'الفلبين'},
    'PN': {'en': 'Pitcairn', 'ar': 'بيتكيرن'},
    'PL': {'en': 'Poland', 'ar': 'بولندا'},
    'PT': {'en': 'Portugal', 'ar': 'البرتغال'},
    'PR': {'en': 'Puerto Rico', 'ar': 'بورتوريكو'},
    'QA': {'en': 'Qatar', 'ar': 'قطر'},
    'RE': {'en': 'Réunion', 'ar': 'ريونيون'},
    'RO': {'en': 'Romania', 'ar': 'رومانيا'},
    'RU': {'en': 'Russia', 'ar': 'روسيا'},
    'RW': {'en': 'Rwanda', 'ar': 'رواندا'},
    'BL': {'en': 'Saint Barthélemy', 'ar': 'سان بارتيليمي'},
    'SH': {'en': 'Saint Helena', 'ar': 'سانت هيلينا'},
    'KN': {'en': 'Saint Kitts and Nevis', 'ar': 'سانت كيتس ونيفيس'},
    'LC': {'en': 'Saint Lucia', 'ar': 'سانت لوسيا'},
    'MF': {'en': 'Saint Martin', 'ar': 'سانت مارتن'},
    'PM': {'en': 'Saint Pierre and Miquelon', 'ar': 'سانت بيير وميكلون'},
    'VC': {'en': 'Saint Vincent and the Grenadines', 'ar': 'سانت فنسنت والغرينادين'},
    'WS': {'en': 'Samoa', 'ar': 'ساموا'},
    'SM': {'en': 'San Marino', 'ar': 'سان مارينو'},
    'ST': {'en': 'Sao Tome and Principe', 'ar': 'ساو تومي وبرينسيبي'},
    'SA': {'en': 'Saudi Arabia', 'ar': 'المملكة العربية السعودية'},
    'SN': {'en': 'Senegal', 'ar': 'السنغال'},
    'RS': {'en': 'Serbia', 'ar': 'صربيا'},
    'SC': {'en': 'Seychelles', 'ar': 'سيشل'},
    'SL': {'en': 'Sierra Leone', 'ar': 'سيراليون'},
    'SG': {'en': 'Singapore', 'ar': 'سنغافورة'},
    'SK': {'en': 'Slovakia', 'ar': 'سلوفاكيا'},
    'SI': {'en': 'Slovenia', 'ar': 'سلوفينيا'},
    'SB': {'en': 'Solomon Islands', 'ar': 'جزر سليمان'},
    'SO': {'en': 'Somalia', 'ar': 'الصومال'},
    'ZA': {'en': 'South Africa', 'ar': 'جنوب أفريقيا'},
    'GS': {'en': 'South Georgia', 'ar': 'جورجيا الجنوبية'},
    'SS': {'en': 'South Sudan', 'ar': 'جنوب السودان'},
    'ES': {'en': 'Spain', 'ar': 'إسبانيا'},
    'LK': {'en': 'Sri Lanka', 'ar': 'سريلانكا'},
    'SD': {'en': 'Sudan', 'ar': 'السودان'},
    'SR': {'en': 'Suriname', 'ar': 'سورينام'},
    'SJ': {'en': 'Svalbard and Jan Mayen', 'ar': 'سفالبارد ويان ماين'},
    'SZ': {'en': 'Eswatini', 'ar': 'إسواتيني'},
    'SE': {'en': 'Sweden', 'ar': 'السويد'},
    'CH': {'en': 'Switzerland', 'ar': 'سويسرا'},
    'SY': {'en': 'Syria', 'ar': 'سوريا'},
    'TW': {'en': 'Taiwan', 'ar': 'تايوان'},
    'TJ': {'en': 'Tajikistan', 'ar': 'طاجيكستان'},
    'TZ': {'en': 'Tanzania', 'ar': 'تنزانيا'},
    'TH': {'en': 'Thailand', 'ar': 'تايلاند'},
    'TL': {'en': 'Timor-Leste', 'ar': 'تيمور الشرقية'},
    'TG': {'en': 'Togo', 'ar': 'توغو'},
    'TK': {'en': 'Tokelau', 'ar': 'توكيلاو'},
    'TO': {'en': 'Tonga', 'ar': 'تونغا'},
    'TT': {'en': 'Trinidad and Tobago', 'ar': 'ترينيداد وتوباغو'},
    'TN': {'en': 'Tunisia', 'ar': 'تونس'},
    'TR': {'en': 'Turkey', 'ar': 'تركيا'},
    'TM': {'en': 'Turkmenistan', 'ar': 'تركمانستان'},
    'TC': {'en': 'Turks and Caicos Islands', 'ar': 'جزر توركس وكايكوس'},
    'TV': {'en': 'Tuvalu', 'ar': 'توفالو'},
    'UG': {'en': 'Uganda', 'ar': 'أوغندا'},
    'UA': {'en': 'Ukraine', 'ar': 'أوكرانيا'},
    'AE': {'en': 'United Arab Emirates', 'ar': 'الإمارات العربية المتحدة'},
    'GB': {'en': 'United Kingdom', 'ar': 'المملكة المتحدة'},
    'US': {'en': 'United States', 'ar': 'الولايات المتحدة'},
    'UM': {'en': 'United States Minor Outlying Islands', 'ar': 'جزر الولايات المتحدة الصغيرة النائية'},
    'UY': {'en': 'Uruguay', 'ar': 'أوروغواي'},
    'UZ': {'en': 'Uzbekistan', 'ar': 'أوزبكستان'},
    'VU': {'en': 'Vanuatu', 'ar': 'فانواتو'},
    'VE': {'en': 'Venezuela', 'ar': 'فنزويلا'},
    'VN': {'en': 'Vietnam', 'ar': 'فيتنام'},
    'VG': {'en': 'British Virgin Islands', 'ar': 'جزر فيرجن البريطانية'},
    'VI': {'en': 'U.S. Virgin Islands', 'ar': 'جزر فيرجن الأمريكية'},
    'WF': {'en': 'Wallis and Futuna', 'ar': 'واليس وفوتونا'},
    'EH': {'en': 'Western Sahara', 'ar': 'الصحراء الغربية'},
    'YE': {'en': 'Yemen', 'ar': 'اليمن'},
    'ZM': {'en': 'Zambia', 'ar': 'زامبيا'},
    'ZW': {'en': 'Zimbabwe', 'ar': 'زيمبابوي'},
  };

  /// Get localized country name based on current locale
  static String getLocalizedCountryName(String countryCode, BuildContext context) {
    // Try to get locale from DeviceCubit first (your app's locale system)
    String? locale;
    try {
      final deviceState = context.read<DeviceCubit>().state;
      locale = deviceState.model.locale.languageCode;
    } catch (e) {
      // Fallback to Flutter's locale system
      locale = Localizations.localeOf(context).languageCode;
    }
    
    // Debug: Print the detected locale
    print('CountryLocalizationHelper: Detected locale: $locale for country: $countryCode');
    
    final countryNames = _localizedCountryNames[countryCode];
    
    if (countryNames != null) {
      // Return Arabic if locale is Arabic, otherwise English
      String result = locale == LangCodeHelper.langAR ? countryNames[LangCodeHelper.langAR]! : countryNames[LangCodeHelper.langEN]!;
      print('CountryLocalizationHelper: Returning: $result');
      return result;
    }
    
    // Fallback to English if country not found
    return countryNames?[LangCodeHelper.langEN] ?? countryCode;
  }

  /// Get country name in specific language
  static String getCountryNameInLanguage(String countryCode, String languageCode) {
    final countryNames = _localizedCountryNames[countryCode];
    return countryNames?[languageCode] ?? countryNames?[LangCodeHelper.langEN] ?? countryCode;
  }

  /// Get all available languages for a country
  static Map<String, String> getCountryLanguages(String countryCode) {
    return _localizedCountryNames[countryCode] ?? {};
  }

  /// Force Arabic language for country names (useful for testing)
  static String getArabicCountryName(String countryCode) {
    final countryNames = _localizedCountryNames[countryCode];
    return countryNames?[LangCodeHelper.langAR] ?? countryNames?[LangCodeHelper.langEN] ?? countryCode;
  }

  /// Force English language for country names (useful for testing)
  static String getEnglishCountryName(String countryCode) {
    final countryNames = _localizedCountryNames[countryCode];
    return countryNames?[LangCodeHelper.langEN] ?? countryCode;
  }
}
