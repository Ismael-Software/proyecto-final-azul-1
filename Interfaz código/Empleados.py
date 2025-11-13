import tkinter as tk

root = tk.Tk()
root.title("JEZNAY - Empleados")
root.geometry("400x400")

tk.Label(root, text="Empleados", font=("Arial", 20, "bold")).pack(pady=15)

campos = ["ID Empleado", "Nombre", "Turno", "Salario"]
for campo in campos:
    tk.Label(root, text=campo + ":", font=("Arial", 12)).pack()
    tk.Entry(root, width=40).pack(pady=5)

tk.Button(root, text="Enviar", bg="black", fg="white", width=15).pack(pady=10)

root.mainloop()