SELECT 
             DISTINCT 
             
             -- C.c_id, 
             -- C.create_date, 
             -- C.create_email, 
             -- C.update_date, 
             -- C.update_email, 
             MA.m_id as ma_m_id,
             MA.c_id as ma_c_id, 
             MA.metric_id as ma_met_id,
             C.circuit_id as circuit_id, 
             -- C.uuid,
             AA.a_id as aa_a_id, 
             AA.action_id as aa_action_id, 
             AA.level as aa_level, 
             AA.value as aa_value, 
             AAP.a_id as aap_a_id, 
             AAP.parameter_id as aap_parameter_id, 
             AAP.value as aap_value, 
             TAP.id as tap_id, 
             TAP.name as tap_name, 
             TAP.unit as tap_unit,
             TM.name as tm_name, 
             MA.qos as ma_qos, 
             MA.warn as ma_warn, 
             MA.fail as ma_fail, 
             TM.display_name as tm_display_name, 
             TM.unit as tm_unit, 
             TA.name as ta_name, 
             TA.unit as ta_unit
          FROM 
             npm_dba.circuit_alert C 
             join npm_dba.metric_alert MA on  MA.c_id = C.c_id 
             join npm_dba.threshold_metric TM on TM.id = MA.metric_id 
             JOIN npm_dba.action_alert AA ON MA.m_id = AA.m_id 
             JOIN npm_dba.action_alert_parameter AAP ON AAP.a_id = AA.a_id 
             JOIN npm_dba.threshold_action TA ON  TA.id = AA.action_id 
             JOIN npm_dba.threshold_action_parameter TAP ON  TAP.id = AAP.parameter_id 
             where circuit_id ='05/KEFN/102871/TWCS' 
          ORDER BY ma_m_id, aa_a_id, aap_a_id, tap_id
