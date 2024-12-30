import 'package:equatable/equatable.dart';

class PostItem extends Equatable {
  final String content;
  final String mediasUrl;

  const PostItem({required this.content, required this.mediasUrl});

  @override
  List<Object?> get props => [content, mediasUrl];
}
