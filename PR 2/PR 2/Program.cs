using System;

interface IPayroll
{
    void CalculateSalary();
    void DisplaySalary();
}

class Employee
{
    public int EmpId;
    public string EmpName;
    public double BasicSalary;

    public Employee(int id, string name, double salary)
    {
        EmpId = id;
        EmpName = name;
        BasicSalary = salary;
    }
}

class FullTimeEmployee : Employee, IPayroll
{
    double RA, DA, GrossSalary;

    public FullTimeEmployee(int id, string name, double salary)
        : base(id, name, salary)
    {
    }

    public void CalculateSalary()
    {
        RA = BasicSalary * 0.35;
        DA = BasicSalary * 0.15;
        GrossSalary = BasicSalary + RA + DA;
    }

    public void DisplaySalary()
    {
        Console.WriteLine("\n===== FULL TIME EMPLOYEE PAYROLL =====");
        Console.WriteLine("Employee ID   : " + EmpId);
        Console.WriteLine("Employee Name : " + EmpName);
        Console.WriteLine("Basic Salary  : " + BasicSalary);
        Console.WriteLine("RA (35%)      : " + RA);
        Console.WriteLine("DA (15%)      : " + DA);
        Console.WriteLine("Gross Salary  : " + GrossSalary);
    }
}

class PartTimeEmployee : Employee, IPayroll
{
    double TotalSalary;

    public PartTimeEmployee(int id, string name, double salary)
        : base(id, name, salary)
    {
    }

    public void CalculateSalary()
    {
        TotalSalary = BasicSalary;
    }

    public void DisplaySalary()
    {
        Console.WriteLine("\n===== PART TIME EMPLOYEE PAYROLL =====");
        Console.WriteLine("Employee ID   : " + EmpId);
        Console.WriteLine("Employee Name : " + EmpName);
        Console.WriteLine("Basic Salary  : " + BasicSalary);
        Console.WriteLine("RA            : 0");
        Console.WriteLine("DA            : 0");
        Console.WriteLine("Total Salary  : " + TotalSalary);
    }
}

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("===== EMPLOYEE PAYROLL SYSTEM =====");

        Console.Write("Enter Employee ID: ");
        int id = Convert.ToInt32(Console.ReadLine());

        Console.Write("Enter Employee Name: ");
        string name = Console.ReadLine();

        Console.Write("Enter Basic Salary: ");
        double salary = Convert.ToDouble(Console.ReadLine());

        Console.WriteLine("\nSelect Employee Type");
        Console.WriteLine("1. Full Time");
        Console.WriteLine("2. Part Time");
        Console.Write("Enter Your Choice: ");

        int choice = Convert.ToInt32(Console.ReadLine());

        if (choice == 1)
        {
            FullTimeEmployee emp = new FullTimeEmployee(id, name, salary);
            emp.CalculateSalary();
            emp.DisplaySalary();
        }
        else if (choice == 2)
        {
            PartTimeEmployee emp = new PartTimeEmployee(id, name, salary);
            emp.CalculateSalary();
            emp.DisplaySalary();
        }
        else
        {
            Console.WriteLine("Invalid Choice!");
        }

        Console.WriteLine("\nPress any key to exit...");
        Console.ReadKey();
    }
}