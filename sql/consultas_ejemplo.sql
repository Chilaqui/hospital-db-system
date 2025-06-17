-- Ver toda la agenda médica
SELECT * FROM daily_doctor_schedule;

-- Ver solo citas del día de hoy
SELECT * FROM daily_doctor_schedule
WHERE DATE(appointment_date) = CURDATE();
