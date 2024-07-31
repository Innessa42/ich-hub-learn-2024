

class Employee:
    company = "First Company"

    def __init__(self, name, position):
        self.name = name
        self.position = position

    @classmethod
    def set_company(cls, com_name):
        cls.company = com_name

    def get_info(self):
        return f"Name: {self.name}, Pasition: {self.position}, Company: {self.company}"


employee1 = Employee("John", "Manager")
print(employee1.get_info())
Employee.set_company("Other Company")
employe2 = Employee("Alice", "Developer")
print(employe2.get_info())