library countrycodepicker;

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/country_localization_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';

import 'country.dart';
import 'functions.dart';

const TextStyle _defaultItemTextStyle = const TextStyle(fontSize: 16, color: Colors.black);
const TextStyle _defaultSearchInputStyle = const TextStyle(fontSize: 16, color: Colors.black);
const String _kDefaultSearchHintText = 'Search country name, code';
const String countryCodePackageName = 'country_calling_code_picker';

class CountryPickerWidget extends StatefulWidget {
  /// This callback will be called on selection of a [Country].
  final ValueChanged<Country>? onSelected;

  /// [itemTextStyle] can be used to change the TextStyle of the Text in ListItem. Default is [_defaultItemTextStyle]
  final TextStyle itemTextStyle;

  /// [searchInputStyle] can be used to change the TextStyle of the Text in SearchBox. Default is [searchInputStyle]
  final TextStyle searchInputStyle;

  /// [searchInputDecoration] can be used to change the decoration for SearchBox.
  final InputDecoration? searchInputDecoration;

  /// Flag icon size (width). Default set to 32.
  final double flagIconSize;

  ///Can be set to `true` for showing the List Separator. Default set to `false`
  final bool showSeparator;

  ///Can be set to `true` for opening the keyboard automatically. Default set to `false`
  final bool focusSearchBox;

  ///This will change the hint of the search box. Alternatively [searchInputDecoration] can be used to change decoration fully.
  final String searchHintText;

  /// Force Arabic language for country names (useful for testing)
  final bool forceArabic;

  const CountryPickerWidget({
    Key? key,
    this.onSelected,
    this.itemTextStyle = _defaultItemTextStyle,
    this.searchInputStyle = _defaultSearchInputStyle,
    this.searchInputDecoration,
    this.searchHintText = _kDefaultSearchHintText,
    this.flagIconSize = 32,
    this.showSeparator = false,
    this.focusSearchBox = false,
    this.forceArabic = false,
  }) : super(key: key);

  @override
  _CountryPickerWidgetState createState() => _CountryPickerWidgetState();
}

class _CountryPickerWidgetState extends State<CountryPickerWidget> {
  List<Country> _list = [];
  List<Country> _filteredList = [];
  TextEditingController _controller = new TextEditingController();
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;
  Country? _currentCountry;

  void _onSearch(text) {
    if (text == null || text.isEmpty) {
      setState(() {
        _filteredList.clear();
        _filteredList.addAll(_list);
      });
    } else {
      setState(() {
        _filteredList = _list
            .where((element) =>
                CountryLocalizationHelper.getArabicCountryName(element.countryCode)
                    .toLowerCase()
                    .contains(text.toString().toLowerCase()) ||
                CountryLocalizationHelper.getLocalizedCountryName(element.countryCode, context)
                    .toLowerCase()
                    .contains(text.toString().toLowerCase()) ||
                element.name.toLowerCase().contains(text.toString().toLowerCase()) ||
                element.callingCode.toLowerCase().contains(text.toString().toLowerCase()) ||
                element.countryCode.toLowerCase().startsWith(text.toString().toLowerCase()))
            .map((e) => e)
            .toList();
      });
    }
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    });
    loadList();
    super.initState();
  }

  void loadList() async {
    setState(() {
      _isLoading = true;
    });
    _list = await getCountries(context);
    try {
      final locale = Localizations.maybeLocaleOf(context);
      final code = locale?.countryCode;
      if (code != null && code.isNotEmpty) {
        _currentCountry = _list.firstWhere(
          (element) => element.countryCode.toLowerCase() == code.toLowerCase(),
          orElse: () => _list.first,
        );
      } else {
        _currentCountry = _list.first;
      }
      final country = _currentCountry;
      if (country != null) {
        _list.removeWhere((element) => element.callingCode == country.callingCode);
        _list.insert(0, country);
      }
    } finally {
      setState(() {
        _filteredList = _list.map((e) => e).toList();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: TextField(
            style: widget.searchInputStyle,
            autofocus: widget.focusSearchBox,
            decoration: widget.searchInputDecoration ??
                InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Visibility(
                    visible: _controller.text.isNotEmpty,
                    child: InkWell(
                      child: Icon(Icons.clear),
                      onTap: () => setState(() {
                        _controller.clear();
                        _filteredList.clear();
                        _filteredList.addAll(_list);
                      }),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  hintText: widget.searchHintText == _kDefaultSearchHintText
                      ? tr('searchCountryNameCode')
                      : widget.searchHintText,
                ),
            textInputAction: TextInputAction.done,
            controller: _controller,
            onChanged: _onSearch,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  padding: EdgeInsets.only(top: 16),
                  controller: _scrollController,
                  itemCount: _filteredList.length,
                  separatorBuilder: (_, index) => widget.showSeparator ? Divider() : Container(),
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        widget.onSelected?.call(_filteredList[index]);
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 12, top: 12, left: 24, right: 24),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              _filteredList[index].flag,
                              package: countryCodePackageName,
                              width: widget.flagIconSize,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: widget.flagIconSize,
                                  height: widget.flagIconSize,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Icon(
                                    Icons.flag,
                                    size: widget.flagIconSize * 0.6,
                                    color: Colors.grey,
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: Text(
                              '${_filteredList[index].callingCode} ${widget.forceArabic ? CountryLocalizationHelper.getArabicCountryName(_filteredList[index].countryCode) : _filteredList[index].name}',
                              style: widget.itemTextStyle,
                            )),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }
}
