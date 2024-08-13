abstract class RestClient{
  dynamic get(dynamic queryParam);
  dynamic post(dynamic requestBody);
  dynamic put(dynamic queryParam);
  dynamic delete(dynamic queryParam);
  dynamic multipart();

  void addInterceptor();
  void deleteInterceptor();
}