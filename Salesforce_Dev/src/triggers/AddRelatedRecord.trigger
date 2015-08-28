trigger AddRelatedRecord on Account (after insert, after update) {
    
    list<Opportunity> Opplist = new list<Opportunity>();
    list<Opportunity> Getopps = new list<Opportunity>();

    
    map<id, Account> acctwithOpps = new map<id, account>([select id, (select id from Opportunities ) from account where id =: Trigger.new]);
    
    for(Account a : Trigger.new) {
    system.debug('List of accounts with opportunity ' + acctwithOpps.get(a.id).Opportunities.size() );
        if(acctwithOpps.get(a.id).Opportunities.size() == 0) {
            opplist.add(new opportunity (
            Name=a.Name + ' Opportunity',
            StageName='Prospecting',
            CloseDate=System.today().addMonths(1),
            AccountId=a.Id));
        }
      
        if(opplist.size() > 0){
            insert opplist;
        }
        for(Opportunity opp : opplist){
        Getopps=[select id, name from Opportunity where name =: opp.ID];
        system.debug('The new oppurtunity created is' + Getopps);
        }
        
        }
    
    }