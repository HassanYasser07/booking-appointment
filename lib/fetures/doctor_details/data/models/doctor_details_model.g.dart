// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorDetailsModel _$DoctorDetailsModelFromJson(Map<String, dynamic> json) =>
    DoctorDetailsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      photo: json['photo'] as String?,
      address: json['address'] as String?,
      degree: json['degree'] as String?,
      price: json['appoint_price'] as String?,
      startingTime: json['start_time'] as String?,
      endingTime: json['end_time'] as String?,
      description: json['description'] as String?,
      specialization: json['specialization'] == null
          ? null
          : Specialization.fromJson(
              json['specialization'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DoctorDetailsModelToJson(DoctorDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'address': instance.address,
      'degree': instance.degree,
      'appoint_price': instance.price,
      'start_time': instance.startingTime,
      'end_time': instance.endingTime,
      'description': instance.description,
      'specialization': instance.specialization,
      'city': instance.city,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
