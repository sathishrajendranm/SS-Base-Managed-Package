public class AccountTriggerHandler {

    public static void delcalc(List<Account> accts){
        set<id> ctctidmap = new set<id>();
        for(Account a : accts){
            ctctidmap.add(a.id);
        }
        List<contact> cons = [SELECT AccountId FROM contact WHERE AccountId IN : ctctidmap];
        //map<id,integer> accmap = new map<id,integer>();
        for(Account a : accts){
            Integer c = cons.size();
           
                system.debug(';;;;;;;;;;;;;;'+c);
            if(c>=1){
                a.adderror('This account has contact. so you cannot delete this account');
            }
            
        }
    }
}