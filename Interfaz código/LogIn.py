import tkinter as tk
from tkinter import messagebox

def verificar_login():
    usuario = entry_usuario.get()
    contrasena = entry_contrasena.get()

    if usuario == "JEZNAY" and contrasena == "1234":
        messagebox.showinfo("Acceso concedido", "¡Bienvenido, admin!")
        root.destroy()
    else:
        messagebox.showerror("Error", "Usuario o contraseña incorrectos")

root = tk.Tk()
root.title("JEZNAY - Login")
root.geometry("600x500")
root.geometry("350x350")
root.resizable(False, False)
root.configure(bg="#fdf1f1")

tk.Label(root, text="Inicio de Sesión \n JEZNAY", font=("Arial", 18, "bold"), bg="#fdf1f1").pack(pady=15)

tk.Label(root, text="Usuario:", font=("Arial", 12), bg="#fdf1f1").pack(pady=5)
entry_usuario = tk.Entry(root, width=30)
entry_usuario.pack(pady=5)

tk.Label(root, text="Contraseña:", font=("Arial", 12), bg="#fdf1f1").pack(pady=5)
entry_contrasena = tk.Entry(root, width=30, show="*")
entry_contrasena.pack(pady=5)

tk.Button(root, text="Ingresar", bg="#ffcbdb", fg="white", font=("Arial", 11, "bold"),
          width=20, command=verificar_login).pack(pady=20)

root.mainloop()