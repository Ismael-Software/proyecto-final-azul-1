import tkinter as tk
from BD.clientesConsulta import clientesConsulta

root = tk.Tk()
root.title("JEZNAY - Clientes")
root.geometry("401x401")

tk.Label(root, text="Clientes", font=("Arial", 20, "bold")).pack(pady=15)

tk.Label(root, text="Id Cliente:", font=("Arial", 12)).pack()
vaIDCliente = tk.Entry(root, width=40)
vaIDCliente.pack(pady=5)

tk.Label(root, text="Nombre:", font=("Arial", 12)).pack()
vaNombre = tk.Entry(root, width=40)
vaNombre.pack(pady=5)

tk.Label(root, text="Telefono:", font=("Arial", 12)).pack()
vaTelefono = tk.Entry(root, width=40)
vaTelefono.pack(pady=5)

def invocarBoton():
    x = vaIDCliente.get()
    y = vaNombre.get()
    z = vaTelefono.get()

    cc = clientesConsulta()
    cc.conexion()
    cc.insertar(x, y, z)

tk.Button(root, text="Enviar", bg="#FFCBDB", fg="black", width=15, command=invocarBoton).pack(pady=10)

root.mainloop()
