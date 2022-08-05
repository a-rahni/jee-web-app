
package fr.m2i.javawebapp.session;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rahni
 */
public class UserDb {
    //private static List<User> users;
     private static List<User> users = new ArrayList(){{
         add(new User("admin@admin.com","admin",Role.ADMIN));
         add(new User("user@user.com","user",Role.USER));
     }};
    
      public static User checkUser(String email, String password) {
        // parser la liste de user
        // chercher l'occurence qui a le bon couple email / password -> le retourner
        // null si on ne trouve pas
        
        for(User u:users){
            if(u.getEmail().equals(email) && u.getPassword().equals(password)){
                return u;
            }
        }
        return null;
    }

    public List<User> getUsers() {
        return users;
    }
    
//    public UserDb(){
//        //users = new ArrayList(){{
//        //    add(new User());
//        //    add(new User());
//        //    add(new User());            
//        //}};
//        
//        users = new ArrayList();
//        users.add(new User());
//        users.add(new User());
//        users.add(new User());
//    }
    
}
