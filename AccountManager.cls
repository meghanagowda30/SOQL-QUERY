public class AccountManager {
    // Method to fetch accounts with a specific industry
    public static List<Account> getAccountsByIndustry(String industryFilter) {
        List<Account> accounts = [SELECT Id, Name, Industry FROM Account WHERE Industry = :industryFilter];
        System.debug('Apex logsss' + accounts);
        return accounts;
    }

    // Method to create a new account
    public static void createAccount(String accountName, String industry) {
        Account newAccount = new Account(Name = accountName, Industry = industry);
        insert newAccount;
    }
}
