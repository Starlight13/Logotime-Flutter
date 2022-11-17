abstract class RequestModel {
  String toJson();
}

class EmptyRequestModel extends RequestModel {
  @override
  String toJson() {
    return '';
  }
}
