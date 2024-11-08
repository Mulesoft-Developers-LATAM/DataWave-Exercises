%dw 2.0
output application/json
var data = [
  { "name": "John", "age": 30, "department": "HR" },
  { "name": "Jane", "age": 25, "department": "Finance" },
  { "name": "Doe", "age": 20, "department": "HR" },
  { "name": "Anna", "age": 35, "department": "IT" },
  { "name": "Sergio", "age": 35, "department": "IT" }
]

---
(data filter ((item, index) -> item.age>25)) groupBy ((item, index) -> item.department)
