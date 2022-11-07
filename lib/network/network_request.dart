enum HttpMethod { get, post }

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
