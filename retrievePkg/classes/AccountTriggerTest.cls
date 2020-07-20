@isTest 
public class AccountTriggerTest {

    @isTest
    public static void accDeleteTest() {
        
        Account acc = new Account();
        acc.Name='TestAccount1';
        acc.Is_Primary__c = true;
        insert acc;
        
        Contact con = new Contact();
        con.LastName = 'TestContact';
        con.AccountId = acc.Id;
        insert con;
        
        Test.startTest();
            try {
                Delete acc;
                } catch(Exception ex) {
                
                }
        Test.StopTest();
    }
}