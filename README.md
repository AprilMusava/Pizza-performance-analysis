# Pizza-performance-analysis


# Project Background
Pizza Parlor, a mid-sized player in the food service industry, has been operational since 2008, specializing in a diverse range of pizzas. In 2015, the company processed over 21,000 orders, selling nearly 50,000 pizzas. The business operates on a direct-to-customer model with dine-in, takeout, and delivery options. This analysis evaluates its performance metrics, sales trends, and customer behavior, offering actionable insights for future growth.

Targeted SQL queries addressing business questions can be found here [(https://github.com/AprilMusava/Pizza-performance-analysis/)].
The full excel data and the excel dashboard [link].

Data Structure & Initial Checks
The company’s database contains the following data with a total of 48621 records:

Orders: Contains details of customer orders.
Pizzas: Lists the types and sizes of pizzas sold.
Order Details: Provides a breakdown of order ID, order day, price, and order quantity
Dates: Records the date and time of each transaction.


# Executive Summary
In 2015, Pizza Parlor achieved total revenue of $817,860.05, with an average order value of $38.31. Fridays and lunchtime hours saw the highest sales, while large and classic pizzas dominated the menu. Key takeaways for stakeholders:

* Friday’s peak sales opportunities.
* High demand for large-sized and classic pizzas.
* The underperformance of niche pizza types and XX Large size.

![full dashboard](https://github.com/user-attachments/assets/8e76fd0b-0103-4805-91fd-2a7109f8b5ca)



# Insights Deep Dive
Category 1: Daily and Hourly Sales Trends

Main Insight 1: Friday led with 3,538 orders, while Sunday lagged with 2,624.
Main Insight 2: Sales peaked between 12-1 PM and 5-7 PM.

![Trends](https://github.com/user-attachments/assets/30cd0274-b433-4953-ab95-6ae8aa51b384)


Category 2: Pizza Category Performance

Main Insight 1: Classic Pizza accounted for 26.91% of total sales.
Main Insight 2: The top 5 pizzas included Classic Deluxe, BBQ Chicken, and Hawaiian.

![% sales by category](https://github.com/user-attachments/assets/fc743f29-2803-42ed-ada6-43eae2734ebe)



Category 3: Size Preferences

Main Insight 1: Large pizzas contributed to 45.89% of sales.
Main Insight 2: XX-Large pizzas were the least popular (0.12% of sales).

![% sales by pizza size](https://github.com/user-attachments/assets/be066b01-4af6-4402-a1b3-6c8397091894)



Category 4: Revenue by Customer Order Value

Main Insight 1: Average order value was $38.31, driven by customers ordering 2-3 pizzas on average.

![KPIs](https://github.com/user-attachments/assets/7cc066ef-3a0c-4119-bd7b-0dc5b10136b4)


# Recommendations

Based on these insights, the following actions are recommended:

* Promotional Campaigns: Target slow days like Sundays to drive customer traffic.

* Peak Hours: Offer special deals during lunchtime and evening rush hours.

* Menu Optimization: Focus on large and classic pizzas; consider phasing out low-performing sizes like XX-Large.

* Revamp Underperforming Pizzas: Update recipes or market niche pizzas more aggressively.

  
# Assumptions and Caveats

* Imputed Missing Data: Missing date values were filled using historical averages.
* Excluded Irregular Records: Non-sensical or incomplete order records were omitted.
* Trend Imputation: Assumed consistent demand patterns based on previous years.





