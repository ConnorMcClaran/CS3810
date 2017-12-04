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

try:
    a = int(Area_code)
    b = int(Local_number)
except ValueError:

    print('Invalid phone entered')

try:
    if '@' in Email :
        print('Email accepted')
except ValueError:
     print('Invalid Email entered')
    
#Create customer in database
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
        print('No connection')

    finally:
        if conn is not None:
            conn.close()

    return Customer_id

input_customer(First_name,Last_name,Street,City,Country,Area_code,Local_number,Email)

TorontoDest = ['New York','Chicago','London','Montreal','Edinburgh']
NewYorkDest = ['Chicago','Toronto']
ChicagoDest = ['New York','Toronto']
LondonDest = ['Toronto','Edinburgh','Paris','Nice']
EdinburghDest = ['Toronto','Montreal','London','Paris','Nice']
ParisDest = ['London','Edinburgh','Nice']
NiceDest = ['London','Edinburgh','Paris']
MontrealDest = ['Toronto','London','Edinburgh']

               
Origin = input('What is your origin City:')
attempts  = 0 
while attempts < 3:
    if Origin == 'Toronto' :
        print('Avaiable Destinations:',TorontoDest)
        dest = input('What is your Destination:')

        try:
            if dest in TorontoDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1

    if Origin == 'New York' :
        print('Avaiable Destinations:',NewYorkDest)
        dest = input('What is your Destination:')

        try:
            if dest in NewYorkDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1

    if Origin == 'Chicago' :
        print('Avaiable Destinations:',ChicagoDest)
        dest = input('What is your Destination:')

        try:
            if dest in ChicagoDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1

    if Origin == 'London' :
        print('Avaiable Destinations:',LondonDest)
        dest = input('What is your Destination:')

        try:
            if dest in LondonDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1
            
    if Origin == 'Edinburgh' :
        print('Avaiable Destinations:',EdinburghDest)
        dest = input('What is your Destination:')

        try:
            if dest in EdinburghDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1
            
    if Origin == 'Paris' :
        print('Avaiable Destinations:',ParisDest)
        dest = input('What is your Destination:')

        try:
            if dest in ParisDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1
            
    if Origin == 'Nice' :
        print('Avaiable Destinations:',NiceDest)
        dest = input('What is your Destination:')

        try:
            if dest in NiceDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1
            
    if Origin == 'Montreal' :
        print('Avaiable Destinations:',MontrealDest)
        dest = input('What is your Destination:')

        try:
            if dest in MontrealDest:
                print('Destination Accepted')
                break
        except:
            print('Invalid City Select from avaiable destinations')
            attempts = attempts + 1
            

            

            
    
    
    
          




