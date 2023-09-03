


import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:myapp/features/users/domain/repository/UserRepository.dart';

class GetPostsUsecase {
  final UserRepository postRepository;

  GetPostsUsecase(this.postRepository);

  Future<List<User>> execute() async {
    return await postRepository.getAllOrdersByUser();
  }
}