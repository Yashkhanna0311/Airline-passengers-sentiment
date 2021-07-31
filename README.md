# Airline-passengers-sentiment
Data analysis portfolio project
I have made this project by my self. I n this project i have taken the data from the site named kaggle. The data is based on airline passenger sentiment analysis.The data contains the information about the passengers and the ratings they have given to the different aspects of there airline experience.
The problem statement here is that the airline wants me to find the TARGET PASSENGERS of the airline and than to give some suggestions on what aspect should they improve for making the passengers experience more delightful.
Now coming to the 1st part of the question is how to find the target audience. So for this i made some filters and apply these filters using SQL queries.  
--
My 1st filter was the type of class the passengers preffered . I came to find  that around 92% of passengers either travel in economic or business class hence removing the eco plus class.

![image](https://user-images.githubusercontent.com/87725407/127734854-bdd29164-963b-4675-8193-6f1334a346ba.png)

My 2nd filter was that are the passengers signed in for loyality program or not. I came to find that 82% of our passengers are signed up for loyality program so we can remove the rest of the passengers from our target passengers.

![image](https://user-images.githubusercontent.com/87725407/127734892-7090eca7-c0fe-466c-936d-a18a3472f439.png)

My 3rd filter was that wheather the distance travelled by the passengers is less than 2500 km or greater than it. I came to find  that around 85% of the passengers are those who travelled below 2500 km.

![image](https://user-images.githubusercontent.com/87725407/127735129-4a241c65-273b-4960-933d-850dcc98b59f.png)

My 4th and 5th filter was the AGE and the GENDER but i was not able to find any conclusions as they were spread very equally so i removed both of them.


TARGET PASSENGERS
--
So from this we can infer that our target passengers are the people who travel from business aur economy class and are a part of loyality program and travel below 2500 km of	distance 		
		
These are the people who generate around 80% of revenue	for our Airline		

Now coming to the 2nd part of the question is to give suggestions by using the ratings given by these TARGET PASSENGERS

CONCLUSIONS I MADE 
--
![image](https://user-images.githubusercontent.com/87725407/127735302-dfb67f80-7304-4d36-bf9c-792cf48a87e4.png)

Assuming that the rating above 3 is above averge rating		


1)The UI of the app from which tickets are being booked has to be made more userfriendly
--
2)The inflight wifi has to be made more efficient giving more data speed for the passengers	
--
3)The gate location should be printed on the ticket and the attendent should tell the direction of it	
--
4)The leg room should increase for the passengers travelling in economy class		
--
5)The online boarding service should be improved for the passengers travelling in economy class	
--


