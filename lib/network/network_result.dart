/// Network result returned from a request.
abstract class INetworkResult<T> {
  void when(Function(Success) success, Function(Failure) error) {
    if (this is Success) {
      success.call(this as Success);
    } else {
      error(this as Failure);
    }
  }
}

/// Network result returned from a successful request.
class Success<T> extends INetworkResult<T> {
  final T? data;

  Success(this.data);
}

/// Network result returned from a failed request.
class Failure<T> extends INetworkResult<T> {
  final String errorCode;
  final String message;
  final int? statusCode;

  Failure({required this.errorCode, required this.message, this.statusCode});

  Failure.fromJson(Map<String, dynamic> json)
      : errorCode = json['errorCode'],
        message = json['message'],
        statusCode = null;

  @override
  String toString() {
    return '$errorCode: $message';
  }
}
