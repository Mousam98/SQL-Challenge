/*
	4. Who is the most active user?
*/	
with temp as(
  select user_id,
  count(*) as user_freq
  from interactions
  group by user_id
  order by user_freq desc
  limit 1
)

select user_id as most_frequent_user from temp;
