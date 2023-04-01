from psycopg2 import connect, OperationalError, sql, DatabaseError

try:
    cnx = connect(user="postgres", password="coderslab", host="localhost", port=5433, database="postgres")
    cursor = cnx.cursor()
    print("Connected")
except OperationalError as error:
    print("Connection Error")
    raise ValueError(f"Connection Error: {error}")

query_create_table_user = sql.SQL("""
    CREATE TABLE IF NOT EXISTS {table_name} (
        ID SERIAL,
        NAME VARCHAR(50),
        Email VARCHAR(120) UNIQUE,
        Password VARCHAR(60) DEFAULT 'ala',
        PRIMARY KEY (ID)
    )
""").format(table_name=sql.Identifier("User"))

query_insert_user = sql.SQL("""
    INSERT INTO {table_name}(name, email, password)
    VALUES(%s, %s, %s)
 """).format(table_name=sql.Identifier("User"))


query_update = sql.SQL("""
    UPDATE {table_name}
    SET email = %s
    WHERE id = %s 
 """).format(table_name=sql.Identifier("User"))

query_delete = sql.SQL("""
    DELETE
    FROM {table_name}
    WHERE id = %s 
 """).format(table_name=sql.Identifier("User"))

query_create_table_address = sql.SQL("""
    CREATE TABLE IF NOT EXISTS {table_name}(
    ID SERIAL PRIMARY KEY,
    Street VARCHAR(85),
    City VARCHAR(85),
    Notes TEXT,
    UserID SMALLINT,
    FOREIGN KEY (UserID) REFERENCES {foreign_table_name}(ID)
""").format(table_name=sql.Identifier("Address"), foreign_table_name=sql.Identifier("User"))

query_alter = sql.SQL("""
    ALTER TABLE {table_name} ADD COLUMN Price DECIMAL(7, 2) DEFAULT 0
""").format(table_name=sql.Identifier)


with cnx:
    #try:
    #     cursor.execute(query_create_table_user)
    #     cursor.execute(query_create_table_user)
    #except DatabaseError as error:
    #    print(error)
    # try:
    #    cursor.execute(query_insert_user,("Janusz","Janusz@wp.pl","dworczyk"))
    # except DatabaseError as error:
    #     print(error)
     #     print(error)
    # try:
    #    cursor.execute(query_update,("janusz@wp.pl",1))
    # except DatabaseError as error:
    #     print(error)
    #try:
    #    cursor.execute(query_delete, (1,))
    #except DatabaseError as error:
    #    print(error)

cnx.close()