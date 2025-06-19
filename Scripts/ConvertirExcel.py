import pandas as pd

# Cargar el Excel
df = pd.read_excel("/home/chilaquil/Documentos/Git-Hub/Codding/hospital-db-system/patients_data_new.xlsx");

# Generar sentencias INSERT
insert_statements = []
for _, row in df.iterrows():
    statement = (
        "INSERT INTO patients (full_name, birth_date, gender, email, phone, address) "
        f"VALUES ('{row['full_name']}', '{row['birth_date'].date()}', '{row['gender']}', "
        f"'{row['email']}', '{row['phone']}', '{row['address']}');"
    )
    insert_statements.append(statement)

# Guardar en archivo .sql
with open("insert_patients.sql", "w", encoding="utf-8") as f:
    f.write("\n".join(insert_statements))
