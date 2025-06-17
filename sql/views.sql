
CREATE VIEW daily_doctor_schedule AS
SELECT
    d.full_name AS doctor_name,
    p.full_name AS patient_name,
    a.appointment_date,
    a.status,
    a.reason
FROM appointments a
JOIN doctors d ON a.doctor_id = d.id
JOIN patients p ON a.patient_id = p.id
ORDER BY a.appointment_date;
