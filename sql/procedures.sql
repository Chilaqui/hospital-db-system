DELIMITER $$
-- Crear un procedimiento para obtener el historial médico completo de un paciente
-- Este procedimiento mostrará los datos del paciente, sus citas médicas, diagnósticos,
-- prescripciones y expedientes médicos generales.
CREATE PROCEDURE get_full_medical_record(IN patientId INT)
BEGIN
    -- Mostrar datos del paciente
    SELECT full_name, birth_date, gender, email
    FROM patients
    WHERE id = patientId;

    -- Mostrar citas médicas
    SELECT a.id AS appointment_id, a.appointment_date, a.status, a.reason, d.full_name AS doctor
    FROM appointments a
    JOIN doctors d ON a.doctor_id = d.id
    WHERE a.patient_id = patientId;

    -- Mostrar diagnósticos y prescripciones
    SELECT diag.id AS diagnosis_id, diag.description, diag.diagnosis_date,
           pres.medication, pres.dosage, pres.duration_days, pres.instructions
    FROM diagnoses diag
    LEFT JOIN prescriptions pres ON diag.id = pres.diagnosis_id
    WHERE diag.appointment_id IN (
        SELECT id FROM appointments WHERE patient_id = patientId
    );

    -- Mostrar expedientes médicos generales
    SELECT record_date, details
    FROM medical_records
    WHERE patient_id = patientId;
END$$

DELIMITER ;
