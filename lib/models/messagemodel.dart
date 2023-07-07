class MessageModel {
  final String message;
  final bool? isSelf;

  MessageModel({
    required this.message,
    this.isSelf = true,
  });
}
