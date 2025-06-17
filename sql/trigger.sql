DELIMITER $$

CREATE TRIGGER prevent_duplicate_appointments
BEFORE INSERT ON appointments
FOR EACH ROW
BEGIN
    DECLARE appointment_count INT;

    SELECT COUNT(*) INTO appointment_count
    FROM appointments
    WHERE doctor_id = NEW.doctor_id
      AND appointment_date = NEW.appointment_date;

    IF appointment_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This doctor already has an appointment at this date and time.';
    END IF;
END$$

DELIMITER ;
