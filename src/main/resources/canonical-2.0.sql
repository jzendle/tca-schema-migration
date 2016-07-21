
select count(*) from (
select * from tca_instance
join resource on resource.guid = tca_instance.resource
join metric on metric.guid = tca_instance.metric
join alert on alert.metric = metric.guid
join action on action.alert = alert.guid
join alert_action_parameter aap on aap.action = action.guid
join action_parameter ap on ap.id = aap.action_parameter
) tt;