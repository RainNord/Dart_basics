class User{
  final String email;

  User(this.email);
}

class AdminUser extends User with GetMailUser{
  AdminUser(super.email);
}

class GeneralUser extends User{
  GeneralUser(super.email);
}

mixin GetMailUser on User{
  String get getMailSystem => super.email.substring(super.email.indexOf('@')+1);
}

class UserManager<T extends User>{
  List<T> listUsers = [];

  void addUser(T newUser) => listUsers.add(newUser);

  void deleteUser(T delUser) => listUsers.remove(delUser);

  void deleteUserByIndex(int indexUser){
     if((indexUser>=0) & (indexUser<=listUsers.length)) {
       listUsers.removeAt(indexUser);
     }
  }

  List<String> getEmailUsers(){
    List<String> listEmailUsers = [];
    AdminUser userAdmin;

    for(int i=0; i<listUsers.length; i++){
      if(listUsers[i] is AdminUser){
        userAdmin = listUsers[i] as AdminUser;
        listEmailUsers.add(userAdmin.getMailSystem);
      }else{
        listEmailUsers.add(listUsers[i].email);
      }
    }

    return listEmailUsers;
  }
}