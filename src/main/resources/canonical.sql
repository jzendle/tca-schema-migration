SELECT DISTINCT
    MA.m_id      AS ma_m_id,
    MA.c_id      AS ma_c_id,
    MA.metric_id AS ma_met_id,
    C.circuit_id AS circuit_id,
    C.uuid,
    C.c_id,
    C.create_date,
    C.create_email,
    C.update_date,
    C.update_email,
    AA.a_id          AS aa_a_id,
    AA.action_id     AS aa_action_id,
    AA.level         AS aa_level,
    AA.value         AS aa_value,
    AAP.parameter_id AS aap_parameter_id,
    AAP.value        AS aap_value,
    TAP.id           AS tap_id,
    TAP.name         AS tap_name,
    TAP.unit         AS tap_unit,
    TM.name          AS tm_name,
    MA.qos           AS ma_qos,
    MA.warn          AS ma_warn,
    MA.fail          AS ma_fail,
    TM.display_name  AS tm_display_name,
    TM.unit          AS tm_unit,
    TA.name          AS ta_name,
    TA.unit          AS ta_unit
FROM npm_dba.circuit_alert C
JOIN npm_dba.metric_alert MA ON MA.c_id = C.c_id
JOIN npm_dba.threshold_metric TM ON TM.id = MA.metric_id
JOIN npm_dba.action_alert AA ON MA.m_id = AA.m_id
JOIN npm_dba.action_alert_parameter AAP ON AAP.a_id = AA.a_id
JOIN npm_dba.threshold_action TA ON TA.id = AA.action_id
JOIN npm_dba.threshold_action_parameter TAP ON TAP.id = AAP.parameter_id
--    where aap.parameter_id = 8 and aa.value != 'AUTO'
WHERE circuit_id ='41/KEFN/105668/TWCS'
ORDER BY
    ma_m_id,
    aa_a_id,
    tap_id