select count(guid), m.*, e.* from metric m
join element e on m.metric = e.id
group by guid having count(guid) > 0;



select count(m.guid), m.guid mg, a.guid ag from metric m 
join alert a on a.metric = m.guid
group by m.guid
having count(m.guid) > 0
order by m.guid;


select count(m.guid), m.guid mg, a.guid ag from alert m 
join action a on a.alert = m.guid
group by m.guid
having count(m.guid) > 1
order by m.guid;

select count(a.guid), a.guid ag, aap.* from action a 
join alert_action_parameter aap on aap.action = a.guid
group by a.guid
having count(a.guid) = 1
order by a.guid;

select * from action where alert = '0a081c95-18e9-4735-a414-79eed556a988'