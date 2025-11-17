import tkinter as tk

root = tk.Tk()
root.title("JEZNAY - Ventas")
root.geometry("400x400")

tk.Label(root, text="Ventas", font=("Arial", 20, "bold")).pack(pady=15)

campos = ["Nom. Venta", "Fecha", "Total", "Cantidad"]
for campo in campos:
    tk.Label(root, text=campo + ":", font=("Arial", 12)).pack()
    tk.Entry(root, width=40).pack(pady=5)

tk.Button(root, text="Enviar", bg="#FFCBDB", fg="black", width=15).pack(pady=10)

root.mainloop()