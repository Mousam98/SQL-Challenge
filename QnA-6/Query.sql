/*
	6. Which do you think is more helpful - hints or videos? Explain your reasoning.
*/
with temp as (
	select user_id, action,
  	row_number() over (partition by user_id order by timestamp) as action_rank
  from interactions
),

user_metrics as(
  select distinct u1.user_id,
  case
      when u1.user_id = u2.user_id and 
      (u1.action = 'correct' and u2.action = 'video') and
      (u1.action_rank = u2.action_rank+1) then "Yes"
      else	"No" end
  as video_clip_helped,
  case
      when u1.user_id = u2.user_id and
      (u1.action = 'correct' and u2.action = 'hint') and
      (u1.action_rank = u2.action_rank+1) then 'Yes'
      else	'No' end
  as hints_helped
  from temp u1, temp u2
)

select * from user_metrics
where video_clip_helped = 'Yes' or hints_helped = 'Yes';

/* As per the analysis, we can observe that the video action helped
better than hint, which has larger acceptance from audiences, so 
we can come conclude that video helps better*/
