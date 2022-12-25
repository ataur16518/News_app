import 'dart:convert';
import 'package:news_api_project1/model/Sign_in_model.dart';
import 'package:news_api_project1/model/Sign_up_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../server_config.dart';
import 'package:http/http.dart' as http;
class AuthRepo{
  Future<bool> signInWithEmail(String email,String password) async{
    String signInUrl = Config.serverUrl + Config.signInUrl;
    final prefs = await SharedPreferences.getInstance();
    var response = await http.post(Uri.parse(signInUrl),body:<String,String>{
      'email': email,
      'password':password
    });
    var data = jsonDecode(response.body);
    if(response.statusCode==200){
      var message= SignInModel.fromJson(data);
      await prefs.setString('token', message.data!.token.toString());
        print(prefs.get('token'));
        return true;
    }
    return false;
  }

  Future<bool> signUpWithEmail(String name ,String email,String phone,String password ,String confirmpassword) async{
    var response = await http.post(Uri.parse(Config.serverUrl + Config.signUpUrl),body:<String,String>{
      'name':name,
      'email': email,
      'phone':phone,
      'password':password,
      'confirm password':confirmpassword,
    });
    print(response.statusCode);
    if(response.statusCode == 201 ){
      var decodedData = SignUpModel.fromJson(jsonDecode(response.body));
      print(decodedData);
      return true;
    }else{
      throw Exception("User have exist");
    }
  }
}