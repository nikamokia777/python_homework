class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return f"Person: ({self.name}, {self.age})"

p1 = Person("Otar", 35)

def person_serializer(person: Person):
    return f"Name: {person.name}, Age: {person.age}"

with open('persons.txt', 'w') as file:
    file.write(person_serializer(p1))

with open('persons.txt', 'r') as file:
    data = file.readline()

def person_deserilize(text):
    a = text.split(',')
    name = a[0].replace('Name', '')
    age = int(a[1].replace('Age', ''))
    return Person(name, age)
new_person = person_deserilize(data)
print(new_person)