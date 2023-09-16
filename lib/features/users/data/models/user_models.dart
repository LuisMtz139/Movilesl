import '../../domain/entities/User.dart';

class UserModel extends User{
    UserModel({
        required int id,
        required String email,
        required String password,
        required String name,
        required String phoneNumber, 
   }) : super(id,email, password,name,phoneNumber);

   factory UserModel.fromJson(Map<String, dynamic> json){
       return UserModel(
           id: json['id'],
           email: json['email'],
           password: json['password'],
           name: json['name'],
           phoneNumber: json['phoneNumber']
       );
   }


    factory UserModel.fromEntity(User user){
        return UserModel(
            id: user.id,
            email: user.email,
            password:user.password,
            name: user.name,
            phoneNumber : user.phoneNumber,
        );
    }

    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'email': email,
            'password':password,
            'name': name,
            'phoneNumber':phoneNumber,
        };
    }
    //aqui falta un metodo
} 