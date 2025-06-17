
-- Crear tabla de departamentos del hospital
-- Esta tabla almacena la información de los departamentos del hospital
CREATE TABLE departments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Crear tabla de cdoctores
-- Esta tabla almacena la información de los doctores del hospital
CREATE TABLE doctors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    specialty VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Crear tabla de pacientes
-- Esta tabla almacena la información de los pacientes del hospital
CREATE TABLE patients(
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender ENUM('Male', 'Female', 'Other'),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    address TEXT
);

-- Crear tabla de citas medicas
-- Esta tabla almacena las citas médicas programadas entre doctores y pacientes
CREATE TABLE appointments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (patient_id) REFERENCES patients(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Crear tabla de diagnósticos
-- Esta tabla almacena los diagnósticos asociados a las citas médicas  
CREATE TABLE diagnoses(
    id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    description TEXT NOT NULL,
    diagnosis_date DATETIME DEFAULT CURRENT_TIMESTAMP, -- Fecha del diagnóstico
    FOREIGN KEY (appointment_id) REFERENCES appointments(id) -- Relación con la tabla de citas médicas
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Crear tabla de prescripciones
-- Esta tabla almacena las prescripciones médicas asociadas a las citas médicas

CREATE TABLE prescriptions(
    id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    medication VARCHAR(100) NOT NULL,
    dosage VARCHAR(50) NOT NULL,
    duration_days INT,
    instructions TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (appointment_id) REFERENCES appointments(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE medical_records(
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    record_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    details TEXT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

