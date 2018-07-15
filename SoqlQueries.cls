/**
Class for SOQL Queries to be performed in assignment
1. The original verison of the assignment
 
  Author 		CreatedDate dd/mm/yyyy 		functinality
   Amey				13/07/2018				Initial Draft
   
*/
public class SoqlQueries {

	/**
	* Answer 1
	* This method implements 3 different loops 
	* for querying the Account object records
	*/
	public void allAccounts() {

		
			Integer i = 0;

			/**
			* List of Account standard objects to store all Accounts in the org
			*/
			List<Account> accounts = [
				SELECT 
					Name,
					Phone
				FROM
					Account
			];

			/**
			* Traditional for loop
			*/
			for(i=0; i < accounts.size(); i++) {
				System.debug(accounts.get(i));
			}

			/**
			* Advanced for loop
			*/
			for(Account temp : accounts) {
				System.debug(temp);
			}

			/**
			* while loop
			*/
			while(i < accounts.size()) {
				System.debug(accounts.get(i));
				i++;
			}

	}


	/**
	* Answer 2
	* This method is used for querying the Lead object records
	*/
	public void allLeads() {

		List<Lead> leads = [
			SELECT 
				Name,
				Status
			FROM
				Lead
			WHERE
				Company = 'eternus'
		];

		for(Lead temp : leads) {
			System.debug(temp);
		}
	}
	

	/**
	* Answer 3
	* This method is used for creating an Account record and
	* associated Contact records
	*/
	public void createAccount() {

		try{
			Account accRecord = new Account();
			accRecord.Name = 'Eternus';
			insert accRecord;
			Contact con1 = new Contact(Education__c = 'BCA', LastName = 'Apex');
			con1.accountId = accRecord.Id;
			insert con1;
			Contact con2 = new Contact(Education__c = 'B Tech.', LastName = 'Class');
			con2.accountId = accRecord.Id;
			insert con2;
		}
		catch(DmlException e){
			System.debug('The following error has occured : ' + e.getMessage());
		}
		finally{
			System.debug('Inside finally block');
		}
	}


	/**
	* Answer 5
	* This method is used for creating Account records depending on user input
	*/
	public void createMulAccount(Integer count) {
		List<Account> accounts = new List<Account>();
			Integer i = 0;
			while(i < count) {

				Account accRecord = new Account();
				accRecord.Name = 'Eternus' + i	;
				accounts.add(accRecord);
				i++;	
			}
		try{
			
			insert accounts;
			//System.debug(accounts);
		}
		catch(DmlException e){
			System.debug('The following error has occured : ' + e.getMessage());
		}
		finally{
			System.debug('Inside finally block');
		}
	}


	/**
	* Answer 6
	* This method is used for updating Account records with Name = 'Eternus'
	*/
	public void updateAccount() {

		try{
			List<Account> accounts = [
				SELECT 
					Name
				FROM
					Account
				WHERE
					CreatedDate = TODAY
			];
			for(Account temp : accounts) {
				temp.Name = 'Eternus';
			}
            delete accounts;
		}
		catch(DmlException e){
			System.debug('The following error has occured : ' + e.getMessage());
		}
		finally{
			System.debug('Inside finally block');
		}
	}


	/**
	* Answer 7
	* This method is used for updating Account records with Name = 'Eternus'
	*/
	public void delContact() {

		try{
			List<Contact> contacts = [
				SELECT 
					Name,
					Phone
				FROM
					Contact
				WHERE
					CreatedDate = TODAY
			];
			delete contacts;
		}
		catch(DmlException e){
			System.debug('The following error has occured : ' + e.getMessage());
		}
		finally{
			System.debug('Inside finally block');
		}
	}


	/**
	* Answer 8
	* This method displays Savepoint and Rollback
	*/
	public void saveAndRoll() {

		try{
			Employee__c empObj = new Employee__c();
			empObj.Id = 'a076F00000oKCUT';	// use getid function
			empObj.Is_on_Notice_Period__c = true;
			update empObj;
		}
		catch(DmlException e){
			System.debug('The following error has occured : ' + e.getMessage());
		}
		finally{
			System.debug('Inside finally block');
		}
	}

}