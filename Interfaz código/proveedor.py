import tkinter as tk
from tkinter import ttk

root = tk.Tk()
root.title("JEZNAY - Proveedor")
root.geometry("400x480")

tk.Label(root, text="Proveedor", font=("Arial", 20, "bold")).pack(pady=15)

tk.Label(root, text="ID Proveedor:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Label(root, text="Nombre:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Label(root, text="Teléfono:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Label(root, text="Tipo de producto:", font=("Arial", 12)).pack()
tipos = ["Abarrotes", "Bebidas", "Botanas", "Lácteos", "Productos de Limpieza", "Higiene Personal"]
tipo_var = tk.StringVar()
combo_tipo = ttk.Combobox(root, textvariable=tipo_var, values=tipos, state="readonly", width=37)
combo_tipo.pack(pady=5)

tk.Label(root, text="Producto que provee:", font=("Arial", 12)).pack()
tk.Entry(root, width=40).pack(pady=5)

tk.Button(root, text="Enviar", bg="black", fg="white", width=15).pack(pady=10)

root.mainloop()