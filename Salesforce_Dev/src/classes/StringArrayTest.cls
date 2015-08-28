public class StringArrayTest {
    
    public static list<String> generateStringArray(integer m) {
        integer i;
        list<string> str = new list<string>();
        for (i=0; i<m; i++) {
            str.add('Test ' + i);
        }
        system.debug(str);
        return str;
        
    }
   

}