SELECT DISTINCT
    C.circuit_id AS circuit_id,
    C.uuid,
    -- C.c_id,
    C.create_date,
    -- C.create_email,
    -- C.update_date,
    -- C.update_email,
    MA.c_id AS ma_c_id,
    MA.m_id AS ma_m_id,
    TM.name AS metric_name,
    MA.qos,
    MA.warn,
    MA.fail,
    TM.display_name AS display_name,
    TM.unit,
    AA.a_id AS aa_a_id,
    AA.action_id,
    AA.level,
    AA.value AS action_value,
    TA.name  AS action_name,
    TA.unit  AS action_unit,
    AAP.a_id AS aap_a_id,
    AAP.parameter_id,
    TAP.id    AS tap_id,
    AAP.value AS param_value,
    TAP.name  AS param_name,
    TAP.unit  AS param_unit
FROM
    npm_dba.circuit_alert C
JOIN
    npm_dba.metric_alert MA
ON
    MA.c_id = C.c_id
JOIN
    npm_dba.threshold_metric TM
ON
    TM.id = MA.metric_id
LEFT JOIN
    npm_dba.action_alert AA
ON
    MA.m_id = AA.m_id
LEFT JOIN
    npm_dba.action_alert_parameter AAP
ON
    AAP.a_id = AA.a_id
LEFT JOIN
    npm_dba.threshold_action TA
ON
    TA.id = AA.action_id
LEFT JOIN
    npm_dba.threshold_action_parameter TAP
ON
    TAP.id = AAP.parameter_id
WHERE
    circuit_id ='05/KEFN/102871/TWCS'
ORDER BY
    ma_c_id,
    ma_m_id,
    aa_a_id,
    aap_a_id,
    tap_id