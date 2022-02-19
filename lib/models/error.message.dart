class ErrorMessage {
  String _message;
  int _statusCode;

  void setMessage(String message) => _message = message;
  void setStatusCode(int statusCode) => _statusCode = statusCode;

  get message => _message;
  get statusCode => _statusCode;
}
