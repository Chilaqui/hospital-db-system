-- Insertar departamentos
INSERT INTO departments(name, description) VALUES
('Cardiology', 'Department that deals with disorders of the heart.'),
('Neurology', 'Focuses on the nervous system and brain-related disorders.'),
('Pediatrics', 'Provides medical care for infants, children, and adolescents.'),
('Oncology', 'Specializes in the diagnosis and treatament of cancer.');


-- Insertar doctores
INSERT INTO doctors(full_name, email, phone, specialty, department_id) VALUES
('Dra. Maria Torres','mtores@hospital.com','555-111-222','Pediatrics',3),
('Dr. Juan Pérez','jperez@hospital.com','555-222-333','Cardiology',1),
('Dr. Ricardo Gómez','rgomez@hospital.com','555-3333-222', 'Neurology',2),
('Dra. Ana López','alopez@hospital.com','555-444-555','Oncology',4),
('Dr. Carlos Fernández','cfernandes@hospital.com','555-555-666','Pediatrics',3),
('Dra. Laura Martínez','lmartinez@hospital.com','555-666-777','Cardiology',1),
('Dr. Luis Ramírez','lramirez@hopital.com','555-777-888','Neurology',2),
('Dra. Sofia Jiménez','sjimenez@hospital.com','555-888-999','Oncology', 4);

-- Insertar pacientes
INSERT INTO patients(full_name, birth_date, gender, email, phone, address) VALUES
('Pedro Sánchez', '1985-05-15', 'Male', 'psanchez@gmail.com', '555-123-4560', 'Calle Reforma 123, Toluca'),
('Fernanda Ruiz', '1986-08-19', 'Female', 'fruiz@gmail.com', '555-123-4561', 'Av. Juárez 456, CDMX'),
('Hugo López', '1990-11-02', 'Male', 'hlopez@hotmail.com', '555-123-4562', 'Calle Hidalgo 89, Morelia'),
('Mariana Castro', '1992-04-10', 'Female', 'mcastro@gmail.com', '555-123-4563', 'Paseo del Sol 75, Querétaro'),
('Jorge Hernandez', '1988-08-25', 'Male', 'jhernandez@gmail.com', '555-123-4564', 'Av. Central 120, Toluca'),
('Laura Navarro', '1995-09-12', 'Female', 'lnavarro@gmail.com', '555-123-4565', 'Col. Jardines, Puebla'),
('Kevin Ortiz', '2002-06-18', 'Male', 'kortiz@gmail.com', '555-123-4566', 'Col. Las Águilas, Guadalajara'),
('Diana Vega', '1993-01-05', 'Female', 'dvega@gmail.com', '555-123-4567', 'Calle Sur 98, CDMX'),
('Luis Morales', '1978-03-22', 'Male', 'lmorales@yahoo.com', '555-123-4568', 'Camino Real 41, Monterrey'),
('Alejandra Flores', '1986-12-01', 'Female', 'aflores@hotmail.com', '555-123-4569', 'Calle Norte 60, Cancún'),
('Horacio López', '1980-07-17', 'Male', 'hlopez1980@gmail.com', '555-123-4570', 'Blvd. Reforma 333, Puebla'),
('Germin Orozco', '1991-03-14', 'Male', 'gorozco@gmail.com', '555-123-4571', 'Centro Histórico, CDMX'),
('Fernanda Calixto', '1994-10-29', 'Female', 'fcalixto@gmail.com', '555-123-4572', 'Fracc. Villas, Toluca'),
('Jorge Avalos', '1987-12-05', 'Male', 'javalos@gmail.com', '555-123-4573', 'Col. Independencia, León');

-- Insertar citas medicas
INSERT INTO appointments(doctor_id, patient_id, appointment_date, reason, status) VALUES
(1, 2, '2025-06-01 10:00:00', 'Routine pediatric check-up', 'Completed'),
(2, 1, '2025-06-03 09:00:00', 'Chest pain evaluation', 'Completed'),
(3, 4, '2025-06-05 14:00:00', 'Frequent headaches', 'Scheduled'),
(4, 5, '2025-06-06 16:00:00', 'Cancer follow-up', 'Scheduled'),
(1, 6, '2025-06-07 11:30:00', 'Vaccination and development check', 'Scheduled'),
(2, 7, '2025-06-08 08:30:00', 'Irregular heartbeat', 'Scheduled'),
(3, 8, '2025-06-09 13:00:00', 'Dizziness and balance issues', 'Scheduled'),
(4, 9, '2025-06-10 10:00:00', 'Post-treatment cancer review', 'Scheduled'),
(5, 3, '2025-06-11 15:00:00', 'Persistent cough', 'Scheduled'),
(6, 10, '2025-06-12 09:30:00', 'Cardiac stress test', 'Scheduled'),
(7, 11, '2025-06-13 10:00:00', 'Memory loss assessment', 'Scheduled'),
(8, 12, '2025-06-14 14:00:00', 'Chemotherapy progress review', 'Scheduled'),
(1, 13, '2025-06-15 11:00:00', 'Fever and throat pain', 'Scheduled'),
(2, 14, '2025-06-16 12:30:00', 'Routine heart check', 'Scheduled'),
(6, 2, '2025-06-17 10:30:00', 'EKG and blood pressure follow-up', 'Scheduled');

-- Insertar diagnósticos
INSERT INTO diagnoses(appointment_id, description) VALUES
(1, 'Normal pediatric development. No complications.'),
(2, 'Mild arrhythmia detected. Referred to cardiology.'),
(3, 'Tension-type headache. Prescribed rest and hydration.'),
(4, 'No signs of cancer recurrence. Patient stable.'),
(5, 'Routine vaccination applied. Growth within normal range.'),
(6, 'Palpitations confirmed. Scheduled echocardiogram.'),
(7, 'Suspected vertigo. Referred to ENT specialist.'),
(8, 'Post-treatment review indicates recovery. Continue medication.'),
(9, 'Acute bronchitis. Antibiotic prescribed.'),
(10, 'High blood pressure observed. Suggested low-sodium diet.'),
(11, 'Possible early-onset dementia. Recommended neurological tests.'),
(12, 'Positive chemotherapy response. Treatment continues.'),
(13, 'Viral infection. Symptomatic treatment recommended.'),
(14, 'No abnormalities found. Heart function normal.'),
(15, 'Mild hypertension. Advised follow-up and lifestyle change.');


-- Insertar prescripciones
INSERT INTO prescriptions(appointment_id, medication, dosage, duration_days, instructions) VALUES
(1, 'Multivitamin syrup', '10 ml twice a day', 30, 'Take after meals.'),
(2, 'Beta blocker', '50 mg once daily', 60, 'Do not discontinue without consulting your doctor.'),
(3, 'Paracetamol', '500 mg every 6 hours', 5, 'Do not exceed the recommended daily dose.'),
(4, 'None', '-', 0, 'No prescription needed.'),
(5, 'MMR Vaccine', 'Single dose', 1, 'Single vaccination.'),
(6, 'Calcium channel blocker', '10 mg once daily', 60, 'Take at the same time every day.'),
(7, 'Meclizine', '25 mg twice a day', 7, 'Avoid driving while taking this medication.'),
(8, 'Pain reliever', '500 mg every 8 hours', 10, 'Do not combine with alcohol.'),
(9, 'Amoxicillin', '500 mg every 8 hours', 7, 'Complete the full course of treatment.'),
(10, 'Lisinopril', '20 mg once daily', 90, 'Monitor blood pressure regularly.'),
(11, 'Donepezil', '5 mg once daily', 180, 'Take with food to avoid stomach upset.'),
(12, 'Chemotherapy drugs', 'According to protocol', 90, 'Administer under strict medical supervision.'),
(13, 'Rest and hydration', '-', 7, 'Monitor symptoms and consult if worsening.'),
(14, 'None', '-', 0, 'No prescription needed.'),
(15, 'Amlodipine', '5 mg once daily', 30, 'Avoid foods high in sodium.');




-- Insertar registros médicos
INSERT INTO medical_records(patient_id, record_date, details) VALUES
(1, '2025-01-15', 'Patient with no significant medical history.'),
(2, '2025-02-20', 'History of mild arrhythmia, under cardiology follow-up.'),
(3, '2025-03-10', 'Persistent cough treated with antibiotics.'),
(4, '2025-04-05', 'Oncology check-up with no signs of relapse.'),
(5, '2025-05-01', 'Up to date with vaccinations for age.'),
(6, '2025-05-15', 'Mild hypertension, recommended dietary changes.'),
(7, '2025-06-10', 'Vestibular issues referred to ENT specialist.'),
(8, '2025-06-12', 'Post-chemotherapy follow-up, patient stable.'),
(9, '2025-06-14', 'Diagnosed with acute bronchitis, antibiotics prescribed.'),
(10, '2025-06-16', 'Hypertension controlled with medication.'),
(11, '2025-06-18', 'Cognitive evaluation for memory loss.'),
(12, '2025-06-20', 'Positive response to oncological treatment.'),
(13, '2025-06-22', 'Viral infection treated symptomatically.'),
(14, '2025-06-24', 'Cardiological examination with no abnormal findings.'),
(2, '2025-06-26', 'Additional cardiology control for hypertension.');

