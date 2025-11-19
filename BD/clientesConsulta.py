import pymysql

class clientesConsulta:

    def conexion(self):
        try:
            self.conexion = pymysql.connect(
                host="localhost",
                user="root",
                password="",
                database="tiendadeabarrotes"
            )
            print("Conexión exitosa :)")
        except Exception as err:
            print("Hubo un error en la conexion", err)

    def insertar(self, idCliente, Nombre, Telefono):
        try:
            consulta = self.conexion.cursor()
            # Usar parámetros seguros
            textoConsulta = "INSERT INTO clientes (idCliente, Nombre, Teléfono) VALUES (%s, %s, %s)"
            consulta.execute(textoConsulta, (idCliente, Nombre, Telefono))
            self.conexion.commit()
            print("Inserción exitosa")
        except Exception as err:
            print("Fallo la inserción mi chavo:", err)
