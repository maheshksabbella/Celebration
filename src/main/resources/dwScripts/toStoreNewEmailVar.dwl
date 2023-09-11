%dw 2.0
output application/json
var newEmails= vars.emails filter(item) -> item != payload.email
---
newEmails

