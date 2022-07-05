import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intern_task/model/DataModel/DataModel.dart';
import 'package:http/http.dart' as http;

class HomeController extends ChangeNotifier{

  List<DataModel> lowestProperties = [];

  List<DataModel> recentProperties = [];

  Map<String,List<DataModel>> allData = {
    'lowestProperties':[],
    'recentProperties':[],
  };

  bool propertiesLoading = false;

  getLowestProperties()async{
    var url = 'https://amlakalibaba.com/wp-json/ml/v1/lowest_properties/1?page=1';
    lowestProperties = [];
    try{
    http.Response response =  await http.get(Uri.parse(url));
    if(response.statusCode==200){
          var data = json.decode(response.body);
          //print(data);
          data.forEach((element){
            lowestProperties.add(DataModel.fromJson(element));
          });

          //print(lowestProperties.first.id);
      notifyListeners();
      print(lowestProperties);
    }
    else{
      Fluttertoast.showToast(
        msg: 'Error happen , please try again later',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      notifyListeners();
    }
    } on SocketException{
      Fluttertoast.showToast(
        msg: 'Internet connection bad , please try again later',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      notifyListeners();
    }catch(e){
      Fluttertoast.showToast(
        msg: 'Error happen , please try again later',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      notifyListeners();
    }
    notifyListeners();
    return lowestProperties;
  }

  getRecentProperties()async{
    var url = 'https://amlakalibaba.com/wp-json/ml/v1/recent_properties/1?page=1';
    recentProperties = [];
    try{
      http.Response response =  await http.get(Uri.parse(url));
      if(response.statusCode==200){
        var data = json.decode(response.body);
        //print(data);
        data.forEach((element){
          recentProperties.add(DataModel.fromJson(element));
        });
        //print(lowestProperties.first.id);
        notifyListeners();
        print(recentProperties);
      }
      else{
        Fluttertoast.showToast(
          msg: 'Error happen , please try again later',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        notifyListeners();
      }
    } on SocketException{
      Fluttertoast.showToast(
        msg: 'Internet connection bad , please try again later',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      notifyListeners();
    }catch(e){
      Fluttertoast.showToast(
        msg: 'Error happen , please try again later',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      notifyListeners();
    }
    notifyListeners();
    return recentProperties;
  }

  Future<Map<String, List<DataModel>>> getAllData()async{
    allData = {
      'lowestProperties':[],
      'recentProperties':[],
    };

    allData['lowestProperties'] = await getLowestProperties();
    allData['recentProperties'] = await getRecentProperties();
    notifyListeners();
    return allData;
  }

}