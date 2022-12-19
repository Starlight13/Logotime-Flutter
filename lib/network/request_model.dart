/// Request model that makes up the body of the request
abstract class RequestModel {
  String toJson();
}

/// Request model for making requests with empty body
class EmptyRequestModel extends RequestModel {
  @override
  String toJson() {
    return '';
  }
}
