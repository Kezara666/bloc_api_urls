// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

abstract class PostActionState extends PostsState {}

class PostsInitial extends PostsState {}

class PostsFetchingSuccsessfullState extends PostsState {
  final List<PostDataUiModel> posts;

  PostsFetchingSuccsessfullState({
    required this.posts,
  });
}

class PostsFetchingLoadingState extends PostsState {
  PostsFetchingLoadingState() {
    // print("occues");
  }
}

class PostsFetchingErrorState extends PostsState {}
