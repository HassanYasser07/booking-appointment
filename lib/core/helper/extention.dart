extension   StringExtension on String{
  bool isNullOrEmpty ()=> this ==null || this=='';
}
extension ListExtension<T> on List<T>?{
  bool isNullOrEmpty ()=> this ==null || this!.isEmpty;

}
extension MapExtension on Map<String,dynamic>?{
  bool isNullOrEmpty ()=> this ==null || this!.isEmpty;
}











