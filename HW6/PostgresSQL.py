import math
import psycopg2


First_name = input('Enter First Name:')
Last_name = input('Enter Last Name:')
Street = input('Adress line 1:')
Country = input('Country:')
City = input('City:')
Area_code = input('Phone Ares Code(3 digits):')
Local_number = input('Remaining Phone digits:')
Email = input('Email:')

#Create customer
def input_customer(First_name,Last_name,Street,City,Country,Area_code,Local_number,Email):
    sql = """INSERT INTO Customers (First_name,Last_name,Street,City,Country,Area_code,Local_number,Email1)
         VALUES (%s);"""
    conn = None
    Customer_id = None
    try:

        conn = psycopg2.connect("dbname = postgres user = postgres")

        cur = conn.cursor()

        cur.execute(sql, (First_name,Last_name,Street,City,Country,Area_code,Local_number,Email))

        Customer_id = cur.fetchone()[0]

        conn.commit()
    
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()

    return Customer_id

input_customer(First_name,Last_name,Street,City,Country,Area_code,Local_number,Email)

