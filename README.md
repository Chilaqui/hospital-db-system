# 🏥 Sistema de Gestión Hospitalaria - MySQL

> Proyecto de base de datos relacional para la administración de pacientes, doctores, citas, diagnósticos, prescripciones y expedientes médicos. Desarrollado para prácticas avanzadas en SQL.

---

## 🚀 Tecnologías Utilizadas

- **MySQL** – Sistema de gestión de bases de datos relacional
- **MySQL Workbench** – Modelado visual de relaciones (ERD)
- **Terminal / GUI (DBeaver, phpMyAdmin, etc.)** – Interacción con los datos

---

## 📐 Estructura de Tablas

| Tabla             | Descripción |
|-------------------|-------------|
| `departments`     | Departamentos médicos del hospital |
| `doctors`         | Información de los doctores y su especialidad |
| `patients`        | Datos personales de los pacientes |
| `appointments`    | Registro de citas entre pacientes y doctores |
| `diagnoses`       | Diagnósticos realizados en una cita |
| `prescriptions`   | Medicamentos recetados con dosis y duración |
| `medical_records` | Expediente médico general de cada paciente |

---

## ⚙️ Funcionalidades Avanzadas

### 🔁 Triggers

- `prevent_duplicate_appointments`: evita que un doctor tenga más de una cita en el mismo horario.

### 👁️ Vistas (Views)

- `daily_doctor_schedule`: vista que muestra la agenda médica diaria con nombre del doctor, paciente y estado de la cita.

### 🧠 Procedimientos Almacenados

- `get_full_medical_record(patientId)`: genera el historial médico completo de un paciente, incluyendo citas, diagnósticos, recetas y registros.

---

## 📂 Estructura del Proyecto

```
📁 /hospital-system/
│
├── database.sql              # Estructura completa de la base de datos
├── data.sql                  # Inserciones de datos iniciales (departamentos, doctores, etc.)
├── triggers.sql              # Triggers para validaciones automáticas
├── views.sql                 # Definiciones de vistas (views)
├── procedures.sql            # Procedimientos almacenados
├── consultas_ejemplo.sql     # Consultas SQL para pruebas y demostraciones
├── ERD.png                   # Diagrama Entidad-Relación del sistema
└── README.md                 # Documentación del proyecto
```

---

## 📋 Consultas Destacadas (consultas_ejemplo.sql)

```sql
-- Ver toda la agenda médica
SELECT * FROM daily_doctor_schedule;

-- Ver citas del día actual
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
```

---

## 🧪 Cómo Ejecutar el Proyecto

1. **🧱 Ejecuta `database.sql`** para crear las tablas y relaciones.

2. **🔃 Corre `data.sql`** para insertar datos de ejemplo.

3. **⚡ Ejecuta `triggers.sql`, `views.sql` y `procedures.sql`** para añadir lógica avanzada.

4. **🔍 Usa `consultas_ejemplo.sql`** para probar la base de datos con escenarios reales.

---

## 🎯 Objetivos de Aprendizaje

- ✅ Diseño de bases de datos relacionales
- ✅ Implementación de triggers, views y stored procedures
- ✅ Uso de claves foráneas (FOREIGN KEYS)
- ✅ Consultas SQL reales y complejas
- ✅ Buenas prácticas para organizar proyectos SQL
- ✅ Control de versiones con Git y GitHub

---

## 👨‍💻 Autor

**Héctor Luis**  
*Desarrollador Backend | Ingeniero en Sistemas*

| 🌐 [GitHub](https://github.com/Chilaqui) | 

---

<!-- ## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para cambios importantes, por favor abre un issue primero para discutir qué te gustaría cambiar.

1. Fork el proyecto
2. Crea tu rama de características (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Agregar nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request -->