class NetworkException implements Exception {
  final String message;
  final int code;
  final Map<String, dynamic>? response;
  NetworkException({required this.message, required this.code, this.response});
}

class InternetException implements Exception {
  final String message;
  InternetException({required this.message});
}

class PermissionException implements Exception {
  final String message;
  PermissionException({required this.message});
}

class RepoException implements Exception {
  final String message;
  final int? status;
  RepoException({required this.message, this.status});
}
