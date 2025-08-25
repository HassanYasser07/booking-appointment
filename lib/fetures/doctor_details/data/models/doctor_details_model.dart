import 'package:json_annotation/json_annotation.dart';

part 'doctor_details_model.g.dart';

@JsonSerializable()
class DoctorDetailsResponse {
   String? message;
   DoctorDetailsModel? data;
   bool? status;
   int? code;

  DoctorDetailsResponse({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory DoctorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorDetailsResponseToJson(this);
}

@JsonSerializable()
class DoctorDetailsModel {
   int? id;
   String? name;
   String? email;
   String? phone;
   String? photo;
   String? gender;
   String? address;
   String? description;
   String? degree;
   Specialization? specialization;
   City? city;
  @JsonKey(name: "appoint_price")
   num? appointPrice;
  @JsonKey(name: "start_time")
   String? startTime;
  @JsonKey(name: "end_time")
   String? endTime;

  DoctorDetailsModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.specialization,
    this.city,
    this.appointPrice,
    this.startTime,
    this.endTime,
  });

  factory DoctorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorDetailsModelToJson(this);
}

@JsonSerializable()
class Specialization {
   int? id;
   String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}

@JsonSerializable()
class City {
   int? id;
   String? name;
   Governrate? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Governrate {
   int? id;
   String? name;

  Governrate({this.id, this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);

  Map<String, dynamic> toJson() => _$GovernrateToJson(this);
}
