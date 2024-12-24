@isTest
public class AccountManagerTest {
    @isTest
    static void testGetAccountsByIndustry() {
        // Create test data
        Account acc1 = new Account(Name = 'Test Account 1', Industry = 'Technology');
        Account acc2 = new Account(Name = 'Test Account 2', Industry = 'Finance');
        insert new List<Account>{ acc1, acc2 };

        // Call the method from the AccountManager class
        List<Account> techAccounts = AccountManager.getAccountsByIndustry('Technology');

        // Assertions
        System.assertEquals(1, techAccounts.size());
        System.assertEquals('Test Account 1', techAccounts[0].Name);
    }

    @isTest
    static void testCreateAccount() {
        // Call the method from the AccountManager class
        AccountManager.createAccount('New Test Account', 'Healthcare');

        // Verify the account was created
        Account createdAccount = [SELECT Id, Name, Industry FROM Account WHERE Name = 'New Test Account'];
        System.assertEquals('Healthcare', createdAccount.Industry);
    }
}
