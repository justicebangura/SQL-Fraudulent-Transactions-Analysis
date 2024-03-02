# Analysis of Potentially Fraudulent Transactions in Credit Card Data

![An Image of How credit card fraud works from make use of images](https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2015/12/credit-card-fraud.jpg)

* An Image of How credit card fraud works from make use of images.

I conducted a detailed examination of our credit card transaction data, focusing on specific cardholders and timeframes to identify potential fraudulent activities.

## Investigating Suspicious Transactions for Specific Card Holders

My analysis of Our card holders with IDs 2 and 18 revealed distinct patterns indicative of possible fraud. Card holder 2 was involved in 11 transactions, each under $2, but none exceeded $500. In contrast, card holder 18's activity raised more concerns, with 19 transactions below $2 and 7 exceeding $500.

## Visual and Comparative Data Analysis

Using visual data representations, these irregularities, especially in card holder 18's case, became more apparent. Their transaction history showed clear deviations from the norm. A broader look across the database highlighted a frequent occurrence of transactions under $2 involving various card holders (IDs 11, 15, 19, 5, 4, 10, 13, 2, 16, 7, 12, 24, 25, 20, 1, 18, 23, 8), a red flag for potential scam activities. For card holder 25, an unusual pattern emerged: one outlier transaction in January, none in February, one in March, three in April, one in May, and three in June, aligning with concerns about unauthorized use in the first quarter.

## Early Morning Transaction Analysis

Further probing into transactions made between 7 AM and 9 AM revealed 7 transactions over $1000, an atypical pattern for early morning activities. Card holder 25's involvement in these transactions hints at a potential compromise of their account.

## Observations and Implications

A notable trend of high-value transactions in the early morning hours was observed, coinciding with the time when banks are opening and customers are less vigilant. This pattern suggests a possible exploitation window for fraudsters, where detection and customer awareness are delayed.

## Merchants Prone to Being Targeted by Small Transactions

I identified the 5 merchants frequently involved in these small-scale transactions: Johnson Rivas and Anderson, Williams Wright and Wagner, Atkinson Ltd, Williams Inc, Allen Ramos and Carroll. These merchants seem to be more susceptible to these types of suspicious activities.

## Methodology and Tools

This analysis was conducted using [QuickDatabaseDiagrams](https://www.quickdatabasediagrams.com/) for schema visualization, supplemented by various external resources, insights from Stackoverflow, and methodologies demonstrated in live classroom sessions.

*Note: The findings are based on current data patterns and warrant further investigation for conclusive evidence.*
