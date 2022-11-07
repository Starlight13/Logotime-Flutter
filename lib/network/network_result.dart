abstract class INetworkResult<T> {
  void when(Function(Success) success, Function(Failure) error) {
    if (this is Success) {
      success.call(this as Success);
    } else {
      error(this as Failure);
    }
  }
}

class Success<T> extends INetworkResult<T> {
  final T? data;

  Success(this.data);
}

class Failure<T> extends INetworkResult<T> {
  final String errorCode;
  final String message;

  Failure({required this.errorCode, required this.message});

  Failure.fromJson(Map<String, dynamic> json)
      : errorCode = json['errorCode'],
        message = json['message'];

  @override
  String toString() {
    return '$errorCode: $message';
  }
}
