package com.kc;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class JacksonDemo {
    public static void main(String[] args) throws IOException {
        ObjectMapper mapper = new ObjectMapper();

        //java对象 ===> JSON
//        mapper.writeValueAsString(obj);
        //JSON ===> java对象
//        mapper.readValue(str,Class)

        //java数组 <===> JSON
        String[] arr = {"AJAX","Vue","JSON"};
        String str = mapper.writeValueAsString(arr);
        System.out.println("str = " + str);

        str = "[\"AJAX\",\"Vue\",\"JSON\",\"React\"]";
        String[] array = mapper.readValue(str,String[].class);
        System.out.println("数组：" + Arrays.toString(array));

        //java对象 <===> JSON
        User user = new User(1,"spring",24);
        //{"id":1,"name":spring,"age":24}
        str = mapper.writeValueAsString(user);
        System.out.println("str = " + str);

        str = "{\"id\":1,\"name\":\"spring\",\"age\":24}";
        user = mapper.readValue(str,User.class);
        System.out.println(user.toString());
        //java List<User> <===> JSON
        List<User> list = new ArrayList<User>();
        list.add(new User(1,"A",19));
        list.add(new User(2,"B",20));
        list.add(new User(3,"C",21));
        list.add(new User(4,"D",22));
        str = mapper.writeValueAsString(list);
        System.out.println("str = " + str);

        str = "[{\"id\":1,\"name\":\"A\",\"age\":19},{\"id\":2,\"name\":\"B\",\"age\":20},{\"id\":3,\"name\":\"C\"," +
                "\"age\":21},{\"id\":4,\"name\":\"D\",\"age\":22}]";
        List<User> users = mapper.readValue(str,new TypeReference<List<User>>(){});
        System.out.println(users);
    }
}
