import psycopg2 as pg

with open('PS/ipl_ddl.sql', 'r') as file:
    crt = file.read()
with open('PS/ipl_data.sql', 'r') as file:
    ins = file.read()

conn = pg.connect(database='Lab2', user='postgres',
                  password='secret', host='localhost', port='5432')
cur = conn.cursor()

for x in crt.split(';') + ins.split(';'):
    try:
        cur.execute(x)
        conn.commit()
    except Exception:
        continue

cur.close()

if (conn):
    conn.close()
