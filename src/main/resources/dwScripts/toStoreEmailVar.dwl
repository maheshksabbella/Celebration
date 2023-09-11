%dw 2.0
output application/json
var emails=payload.values map(item)-> item[1]
---
emails