/*
	5. Explore Sophie Germain's interactions and suggest what her experience might have been.
*/
select action as Sophie_German_actions 
from interactions i inner join users u
on i.user_id = u.id
where u.first_name = "Sophie" and u.last_name = "Germain";
