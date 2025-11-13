import tkinter as tk

root = tk.Tk()
root.title("JEZNAY - Clientes")
root.geometry("400x400")

tk.Label(root, text="Clientes", font=("Arial", 20, "bold")).pack(pady=15)

campos = ["ID Cliente", "Nombre", "Teléfono/Celular"]
for campo in campos:
    tk.Label(root, text=campo + ":", font=("Arial", 12)).pack()
    tk.Entry(root, width=40).pack(pady=5)

tk.Button(root, text="Enviar", bg="black", fg="white", width=15).pack(pady=10)

root.mainloop()