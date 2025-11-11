import pymysql

try:
    conexion = pymysql.connect(
        host = "localhost",
        user = "root",
        password = "",
        database = "tiendadeabarrotes"
    )
    print("Conexión exitosa :)")

    consulta = conexion.cursor()
    textoConsulta = "SELECT * FROM productosdelatienda"
    consulta.execute(textoConsulta)
    resultado = consulta.fetchall()
    for x in resultado:
        print(x)

except Exception as err:
    print("Hubo un error en la conexion",err)