@isTest
public class TestVerifyDate { 
    
    @isTest
    Static void date2lessthandate1(){
         date mydate1 = date.newInstance(2015,07,21);
         date mydate2 = date.newInstance(2015,07,20);
        VerifyDate.CheckDates(mydate1, mydate2);
    }
     @isTest
    Static void date2lessthan30days(){
            date mydate1 = date.newInstance(2015,07,21);
            date mydate3 = date.newInstance(2015,07,28);
        VerifyDate.CheckDates(mydate1, mydate3);
    }
     @isTest
    Static void date2grtrthan30(){
            date mydate1 = date.newInstance(2015,07,21);
            date mydate4 = date.newInstance(2015,08,22);
        VerifyDate.CheckDates(mydate1, mydate4);
    }

}