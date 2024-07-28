import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_uo_response.g.dart';

@JsonSerializable()
class  SignupResponse{
   String? message;
  @JsonKey(name: 'data')
  UserData? userData;
   bool? states;
   int? code;

  SignupResponse({ this.message,  this.states,  this.code, this.userData});
  factory SignupResponse.fromJson(Map<String,dynamic> json)=> _$SignupResponseFromJson(json);


}
@JsonSerializable()
class UserData{
   String? token;
  @JsonKey(name: 'username')
   String? userName;

  UserData({ this.token,  this.userName});
  factory UserData.fromJson(Map<String,dynamic> json)=> _$UserDataFromJson(json);

}


