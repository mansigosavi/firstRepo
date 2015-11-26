public with sharing class ProgrammaticModel {
	
	
//1. Method which will accept Integer as parameter and determine & print the number is prime or not
	
	public void prime(Integer a)
	{
		Integer cnt=0;
		Integer m;
		for(m=1;m<=a;m++)
		{
			if(Math.mod(a,m)==0)
			{
				cnt++;
			}
		}
		if(cnt>2)
			System.debug('Not Prime');
		else
			System.debug('Prime');  
	}
	
//2. Accept string as a parameter and print whether it is a palindrome or not

	public void palindrome(String checkString)
	{
		String rev;
		rev=checkString.reverse();
		
		if(checkString==rev)
			System.debug('Palindrome');
		else
			System.debug('Not Palindrome');  
	}


//3. Method to replace every occurrence of a character from each string in an array (accept
//both character and array of strings as param)	
	
	public void StrArray(String[] str,String x,String y)
	{
		Integer i;
		String[] str1=new String[]{};
		for(i=0;i<str.size();i++)
		{
			String sub=str[i];
			String replaceStr=sub.replace(x,y);	
			str1.add(replaceStr);
		}
		System.debug(str1);
	}

//4. Method to count the length of a string (not using length function)

	public void calLength(String temp1)
	{
		Integer i=0;
		try{
		while((temp1.charAt(i))!=NULL)
		{
			
			i++;
		}
		
		}catch(Exception e){}
		System.debug(i);
	}
	
	
//5. Method to find only the unique numbers in an array (accept array as a parameter)

	public void uniqueNum(Integer[] x)
	{
		
		Integer i,j;
		//Integer ctr=1;
		for(i=0;i<x.size();i++)
		{
			for(j=0;j<i;j++)
				if(x[i]==x[j])
					break;
			
			if(i==j)
				System.debug(x[i]);		
		}
		

	}

//Show the demo of parameterized constructor

	static Integer c=0;
	public ProgrammaticModel(Integer x,Integer y)
	{
		
		System.debug(x);
		System.debug(y);
		
	}
//mansi...jkhqjkdghwjkh bymdcug
	public void staticDemo()
	{
		c++;
		System.debug(c);
	}
	/*public class temp
{
	static Integer c=0;
	public void staticDemo()
	{
		c++;
		System.debug(c);
	}
}

	temp p1,p2;
	p1=new temp();
	p2=new temp();

	p1.staticDemo();
	p2.staticDemo();
	*/

}