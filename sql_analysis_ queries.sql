1.which merchant category generate the most upi spending.?
  select merchant_category,sum(amount_inr) as total_spend
  from upi_transactions
  group by merchant_category
  order by total_spend DESC;

2.Which merchant category contributes the highest share of spending within each age group?
  with age_category as 
  (
  select 
  sender_age_group,merchant_category,sum(amount_inr) as spend,
  row_number() over(partition by sender_age_group order by sum(amount_inr) DESC) as row_num
  from upi_transactions
  group by sender_age_group,merchant_category 
  ) 

  select * 
  from age_category 
  where row_num=1;

3.Which bank is the highest spending bank within each state?
  with banks_transactions as 
  (
  select sender_state,sender_bank,sum(amount_inr) as total_transactions,
  row_number() over(partition by sender_state order by sum(amount_inr) DESC) as row_num 
  from upi_transactions
  group by sender_state,sender_bank 
  ) 
  select * 
  from banks_transactions
  where row_num=1;

4.Which age group contributes the highest share (%) of total UPI spending?
  select sender_age_group,sum(amount_inr) as total_spending,(sum(amount_inr)*100/(select sum(amount_inr) from upi_transactions)) as share
  from upi_transactions
  group by sender_age_group
  order by share DESC;

5.During which 5 hours of the day is the most money spent.?
  select hour_of_day as hour,sum(amount_inr) as total_spend
  from upi_transactions
  group by hour_of_day
  order by total_spend DESC
  limit 5;

6.Which states have a fraud rate higher than the overall fraud rate?
  select
    sender_state,
    avg(fraud_flag) AS fraud_rate
  from upi_transactions
  group by sender_state
  having fraud_rate >
 ( 
    select avg(fraud_flag)
    from upi_transactions
 );

7.Which merchant categories have a fraud rate above the overall fraud rate.?
  select merchant_category,avg(fraud_flag) as fruad_rate
  from upi_transactions
  group by merchant_category
  having avg(fraud_flag) > (select avg(fraud_flag) from upi_transactions);

8.For each state, at what hour does spending peak.?
  with peak_spend as 
  (
  select sender_state,hour,sum(amount_inr) as total,
  row_number() over(partition by sender_state order by sum(amount_inr) DESC) as peak_hour
  from upi_transactions
  group by sender_state,hour
  )
  select * 
  from peak_spend
  where peak_hour=1;

9.Which bank has the highest fraud rate.?
  select sender_bank,avg(fraud_flag) as fraud_rate
  from upi_transactions
  group by sender_bank
  having avg(fraud_flag) > (select avg(fraud_flag) from upi_transactions);

10.For each state, find the merchant category with the highest spending.?
   with states as 
   (
   select sender_state,merchant_category,sum(amount_inr) as spending,
   row_number() over(partition by sender_state order by sum(amount_inr) DESC) as row_nums 
   from upi_transactions
   group by sender_state,merchant_category
   ) 

   select * 
   from states 
   where row_nums=1;

11.Total spending before 5 PM vs Total spending after 5 PM
   select
   case
    when hour_of_day < 17 then 'before 5 pm' 
    else 'after 5 pm' 
   end as time,
   sum(amount_inr) as spend 
   from upi_transactions 
   group by 
   case 
    when hour_of_day < 17 then 'before 5 pm'
    else 'after 5 pm' 
    end;   













