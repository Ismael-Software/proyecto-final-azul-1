import tkinter as tk
import subprocess
import sys
import os

def abrir_interfaz(nombre_archivo):
    ruta = os.path.join(os.path.dirname(__file__), nombre_archivo)
    subprocess.Popen([sys.executable, ruta])

root = tk.Tk()
root.title("JEZNAY - Menú Principal")
root.geometry("600x550")
root.configure(bg="#f7f7f7")

tk.Label(root, text="JEZNAY", font=("Arial", 26, "bold"), fg="#c9302c", bg="#f7f7f7").pack(pady=30)
tk.Label(root, text="Menú Principal", font=("Arial", 14), bg="#f7f7f7").pack(pady=10)

botones = {
    "Productos": "Productos.py",
    "Ventas": "Ventas.py",
    "Clientes": "clientes.py",
    "Proveedor": "proveedor.py",
    "Empleados": "Empleados.py"
}

for texto, archivo in botones.items():
    tk.Button(
        root,
        text=texto,
        bg="#e74c3c",
        fg="white",
        width=20,
        height=3,
        command=lambda a=archivo: abrir_interfaz(a)
    ).pack(pady=5)

root.mainloop()