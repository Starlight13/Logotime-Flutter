enum HttpMethod {
  getMethod('GET'),
  postMethod('POST');

  final String value;
  const HttpMethod(this.value);
}

class NetworkRequest<T> {
  final String path;
  final HttpMethod methodType;
  final T? data;

  NetworkRequest({
    required this.path,
    required this.methodType,
    this.data,
  });
}
