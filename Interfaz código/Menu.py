import tkinter as tk

root = tk.Tk()
root.title("JEZNAY - Menú Principal")
root.geometry("600x500")
root.configure(bg="#f7f7f7")

tk.Label(root, text="JEZNAY", font=("Arial", 26, "bold"), fg="#c9302c", bg="#f7f7f7").pack(pady=30)
tk.Label(root, text="Menú Principal", font=("Arial", 14), bg="#f7f7f7").pack(pady=10)

botones = ["Productos", "Ventas", "Clientes", "Proveedor", "Empleados"]
for texto in botones:
    tk.Button(root, text=texto, bg="#e74c3c", fg="white", width=20, height=3).pack(pady=5)

root.mainloop()