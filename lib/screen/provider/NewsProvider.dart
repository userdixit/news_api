import 'package:flutter/material.dart';
import 'package:news_api/screen/modal/newsModal.dart';

import '../../utilis/api_helper.dart';

class NewsProvider extends ChangeNotifier
{
  String country='in';
  void changecountry(String coun)
  {
    country=coun;
    notifyListeners();
  }
  // int index=0;
  // void changeIndex(int value)
  // {
  //   index=value;
  //   notifyListeners();
  // }

  Future<NewsModal> loadnews({required String country})
  async {
   NewsModal newsModal= await Apihelper.apihelper.getApi(country: country);
   return newsModal;
  }

}