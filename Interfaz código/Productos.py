import tkinter as tk
from tkinter import ttk

root = tk.Tk()
root.title("JEZNAY - Productos")
root.geometry("400x450")

tk.Label(root, text="Producto", font=("Arial", 20, "bold")).pack(pady=15)

tk.Label(root, text="Nombre del producto:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Label(root, text="Tipo de producto:", font=("Arial", 12)).pack()
tipos = ["Abarrotes", "Bebidas", "Botanas", "Lácteos", "Productos de Limpieza", "Higiene Personal"]
tipo_var = tk.StringVar()
combo_tipo = ttk.Combobox(root, textvariable=tipo_var, values=tipos, state="readonly", width=37)
combo_tipo.pack(pady=5)

tk.Label(root, text="Cantidad:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Label(root, text="Fecha de caducidad:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Button(root, text="Enviar", bg="#FFCBDB", fg="black", width=15).pack(pady=10)

root.mainloop()