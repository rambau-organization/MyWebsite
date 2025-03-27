import tkinter as tk
from tkinter import messagebox

def calculate_salary():
    """Calculate yearly salary after tax deduction."""
    try:
        salary = float(salary_entry.get())
        if salary < 0:
            raise ValueError("Salary cannot be negative.")
        tax_rate = 0.2  # 20% tax
        yearly_salary = salary * 12 * (1 - tax_rate)
        result_label.config(text=f"Yearly Salary (after tax): ${yearly_salary:.2f}")
    except ValueError:
        messagebox.showerror("Input Error", "Please enter a valid salary (numeric value).")

def submit():
    """Handle submission and validate inputs."""
    name = name_entry.get().strip()
    department = department_entry.get().strip()
    
    if not name or not department:
        messagebox.showerror("Input Error", "All fields are required!")
        return

    if not salary_entry.get().isdigit():
        messagebox.showerror("Input Error", "Salary must be a numeric value.")
        return

    messagebox.showinfo("Success", f"Employee {name} from {department} registered successfully!")

# Initialize Tkinter Window
root = tk.Tk()
root.title("Employee Registration")

# Labels & Entries
tk.Label(root, text="Name:").grid(row=0, column=0, padx=10, pady=5)
name_entry = tk.Entry(root)
name_entry.grid(row=0, column=1, padx=10, pady=5)

tk.Label(root, text="Salary:").grid(row=1, column=0, padx=10, pady=5)
salary_entry = tk.Entry(root)
salary_entry.grid(row=1, column=1, padx=10, pady=5)

tk.Label(root, text="Department:").grid(row=2, column=0, padx=10, pady=5)
department_entry = tk.Entry(root)
department_entry.grid(row=2, column=1, padx=10, pady=5)

# Buttons
submit_btn = tk.Button(root, text="Submit", command=submit)
submit_btn.grid(row=3, column=0, columnspan=2, pady=10)

calc_btn = tk.Button(root, text="Calculate Yearly Salary", command=calculate_salary)
calc_btn.grid(row=4, column=0, columnspan=2, pady=10)

# Result Display
result_label = tk.Label(root, text="")
result_label.grid(row=5, column=0, columnspan=2, pady=5)

# Run the application
root.mainloop()

# Refactored Functions Using Lambda
add = lambda x, y: x + y
square = lambda n: n * n
is_even = lambda num: num % 2 == 0
concatenate_strings = lambda s1, s2: f"{s1} {s2}"
get_length = lambda s: len(s)