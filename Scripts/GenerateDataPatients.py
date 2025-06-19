# Volver a importar todo tras el reinicio del entorno
import pandas as pd
import random
from faker import Faker

# Inicializamos Faker
fake = Faker()
Faker.seed(42)
random.seed(42)

# Opciones de género
genders = ['Male', 'Female', 'Other']

# Generar 100 pacientes nuevos
fake.unique.clear()
patients_new = []
for _ in range(100):
    gender = random.choice(genders)
    name = fake.name_male() if gender == 'Male' else fake.name_female() if gender == 'Female' else fake.name()
    birth_date = fake.date_of_birth(minimum_age=1, maximum_age=100)
    email = fake.unique.email()
    phone = fake.phone_number()
    address = fake.address().replace("\n", ", ")
    
    patients_new.append({
        "full_name": name,
        "birth_date": birth_date,
        "gender": gender,
        "email": email,
        "phone": phone,
        "address": address
    })

# Crear DataFrame y guardar en Excel
df_new = pd.DataFrame(patients_new)
excel_path_new = "/home/chilaquil/Documentos/Git-Hub/Codding/hospital-db-system/patients_data_new.xlsx"
df_new.to_excel(excel_path_new, index=False)

excel_path_new
