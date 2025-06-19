-- Ver toda la agenda médica
SELECT * FROM daily_doctor_schedule;

-- Ver solo citas del día de hoy
SELECT * FROM daily_doctor_schedule
WHERE DATE(appointment_date) = CURDATE();

-- Llamar expediente médico de un paciente
CALL get_full_medical_record(1);

-- Ver pacientes con más de 3 citas
SELECT p.full_name, COUNT(*) AS total_appointments
FROM appointments a
JOIN patients p ON a.patient_id = p.id
GROUP BY p.id
HAVING total_appointments > 3;
