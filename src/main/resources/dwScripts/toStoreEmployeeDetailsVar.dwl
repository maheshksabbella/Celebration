%dw 2.0
output application/json
var people=payload.values map(item,index) -> {
    "name":item[0],
    "birthday":item[3] as Date {format: 'dd/MM/yyyy'} as Date {format: 'yyyy-MM-dd'},
    "email":item[1],
    "id": item[2]
}
---
people 
