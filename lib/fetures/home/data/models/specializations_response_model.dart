import 'package:freezed_annotation/freezed_annotation.dart';
part 'specializations_response_model.g.dart';


@JsonSerializable()
class SpecializationResponseModel{

  @JsonKey(name: 'data')
 List<SpecializationData?>? specializationDataList;

  SpecializationResponseModel({this.specializationDataList});

  factory SpecializationResponseModel.fromJson(Map<String,dynamic>json)=>
  _$SpecializationResponseModelFromJson(json);

}

@JsonSerializable()
class SpecializationData{
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;
  SpecializationData({this.id,this.name,this.doctorsList});
  factory SpecializationData.fromJson(Map<String, dynamic> json) => _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors{
  int? id;
  String? name;
  String? email;
  String? photo;
  String? gender;
  @JsonKey(name: 'appoint_price')
  String? price;
  String? degree;

  Doctors({this.id,this.name,this.email,this.photo,this.gender,this.price,this.degree});
  factory Doctors.fromJson(Map<String,dynamic>json)=> _$DoctorsFromJson(json);


}