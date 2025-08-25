import 'package:booking_appointment/core/helper/extention.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel{
  final String? message;
  @JsonKey()
  final int? code;
  @JsonKey(name: 'data')
  final Map<String,dynamic>? errors;

  ApiErrorModel({ this.message,  this.code,this.errors});
  factory ApiErrorModel.fromJson(Map<String,dynamic>json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String gerErrorMessage(){
    if(errors.isNullOrEmpty())
      return message??'unknown error';
      final errMessage = errors?.entries.map((entry) {
        final value=entry.value;
        return'${value.join(', ')}';
      }).join('\n');
      return errMessage??'unknown error';
   }


}