public with sharing class SQLQuerry {
    
    
//2. Query on all Opportunity records where its Account != NULL and Status = Closed	
	public void t2()
	{
		Integer i,j;
		List<Opportunity> oList = new List<Opportunity>();
		Set<Opportunity> oSet = new Set<Opportunity>();
		Opportunity[] o=[SELECT Name FROM Opportunity WHERE Account.Name!=NULL AND Status__c='Close'];
		//System.debug(o);
		
		//a. Add all Opportunity Id’s to the List and print the result
		for(i=0;i<o.size();i++)
		{
			oList.add(o[i]);
		}
		System.debug(oList);
		
		//b. Add all Account Id’s to the set and print the result
		for(i=0;i<o.size();i++)
		{
			oSet.add(o[i]);
		}
		System.debug(oSet);
		
		Map<String, String> myMap = new Map<String, String>();
		for(i=0;i<o.size();i++)
		{
			myMap[i].put();
		}
		System.debug(oSet);
		
	}
	

//3. Find all the Account Names starting with ‘a’. Print that count and update all those
//accounts with New Name as ‘Updated via update DML operation’.
	public void t3()
	{
		Integer i;
		Account[] a =[SELECT Id, Name, BillingCity FROM Account WHERE Name like 'a%'];
		System.debug(a.size());
		
		for(i=0;i<a.size();i++)
		{
			a[i].Name='Updated via update DML operation';
			update a;
		}
		System.debug(a);
	}


//5. Write a SOQL Query on to retrieve/print 10 Campaign records and sort in ascending
//as well as descending order.
	
	public void t5()
	{
		Campaign[] c=[SELECT Name, Type FROM Campaign ORDER BY Name ASC limit 10];
		System.debug(c);
		
		Campaign[] c1=[SELECT Name, Type FROM Campaign ORDER BY Name DESC limit 10];
		System.debug(c1);
	}
	
//6. Write a SOQL query to retrieve/print the Contact records where Last Modified Date =Today

	public void t6()
	{
		Contact[] c=[SELECT Name FROM Contact where lastModifiedDate=TODAY];
		System.debug(c);
		
	}
}