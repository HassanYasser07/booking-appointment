import 'package:json_annotation/json_annotation.dart';

part 'doctor_details_model.g.dart';

@JsonSerializable()
class DoctorDetailsModel {
   int id;
   String name;
   String? photo;
   String? address;
   String? degree;
   @JsonKey(name: 'appoint_price')
   String? price;
   @JsonKey(name: 'start_time')
   String? startingTime;
   @JsonKey(name: 'end_time')
   String? endingTime;
   String? description;
   Specialization? specialization;
   City? city;

  DoctorDetailsModel({
    required this.id,
    required this.name,
    this.photo,
    this.address,
    this.degree,
    this.price,
    this.startingTime,
    this.endingTime,
    this.description,
    this.specialization,
    this.city,
  });

  factory DoctorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorDetailsModelToJson(this);
}

@JsonSerializable()
class Specialization {
   int id;
   String name;

  Specialization({required this.id, required this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}

@JsonSerializable()
class City {
   int id;
   String name;

  City({required this.id, required this.name});

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
