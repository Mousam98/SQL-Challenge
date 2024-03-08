/*
	7. On 2023-09-01, a change was made to how videos are accessed.
    	a) What was the impact of this change?
        b) Suggest some potential explanations for this change.
*/
# select user_id, action from interactions
# where timestamp > '2023-09-01';

/*as per the analysis, metrics after 2023-09-01
user_id	action
4		hint
4		incorrect
4		correct
4		incorrect
4		correct
2		incorrect
2		hint
2		incorrect
4		hint
4		correct*/

with temp as (
	select user_id, action, timestamp,
  	row_number() over (partition by user_id order by timestamp) as action_rank
  from interactions
),

acceptance_rate_calculation as(
  select distinct u1.user_id,
  avg(case
      when u1.user_id = u2.user_id and 
      (u1.action = 'correct' and u2.action = 'video') and
      (u1.action_rank > u2.action_rank) 
      and u2.timestamp < '2023-09-01' then 1
      else	0 end)
  as acceptance_rate_before_date,
  avg(case
      when u1.user_id = u2.user_id and
      (u1.action = 'correct' and u2.action = 'video') and
      (u1.action_rank = u2.action_rank+1) and 
      u2.timestamp > '2023-09-01' then 1
      else	0 end)
  as acceptance_rate_after_date
  from temp u1, temp u2
  group by u1.user_id
)

select * from acceptance_rate_calculation;

/*we can conclude that the accpetance rate after watching video 
before the date was always higher than that after date*/
