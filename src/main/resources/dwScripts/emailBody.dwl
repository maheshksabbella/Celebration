%dw 2.0
output text/plain




var body =`<body>
<div class="container-fluid">

    <img src="https://media.licdn.com/dms/image/C4E0BAQHahXq3Fn8UBQ/company-logo_200_200/0/1677468835898?e=1701907200&v=beta&t=0xm7Q-CKLfM63Df0r1WF8P9W3aSkwQLmZa8wBhzf38k" style="display: block; margin-left: auto; margin-right: auto;">

    <p style="text-align: center;">
        Hello Team,<br><br>

        I hope this email finds you all well. Today, I wanted to take a moment to appreciate each and every one of you
        for your hard work and dedication. Your efforts are truly the driving force behind our success at Inherit Cloud.
        <br> <br>

        On this special day, I would like to draw your attention to the work anniversaries of some of our esteemed colleagues.
        Let's join together in wishing them a very happy work anniversary and making their day even more special.
        <br><br>The work anniversaries we are celebrating today are:
    </p>`


var tableHead = `
<table style="border-collapse: collapse; width: 100%;">
        <tr>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; background-color: #088bde; color: white; padding-top: 12px; padding-bottom: 12px;">Id</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; background-color: #088bde; color: white; padding-top: 12px; padding-bottom: 12px;">Name</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; background-color: #088bde; color: white; padding-top: 12px; padding-bottom: 12px;">Anniversary Year</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; background-color: #088bde; color: white; padding-top: 12px; padding-bottom: 12px;">Email</th>
        </tr>`


var conclusion = `
</table>
    <br><br>
    <p style="text-align: left;">
        Please take a moment to reach out to these individuals and extend your warm wishes. Whether it's a personal
        message, a phone call, or a small celebration, let's make sure they feel valued and appreciated on their special
        day.<br><br>

        Once again, I want to express my gratitude to each and every one of you for your contributions to Inherit Cloud.
        Your hard work and dedication are the cornerstone of our success. Let's make these birthdays memorable for our
        colleagues!<br><br>
        Thank you for being part of our amazing team. <br><br>
        Regards,<br>
        Inherit Cloud Team.
    </p>
</div>
</body>`

var tableRows = vars.Anniversaries map ((person, index) -> 
    "<tr>\n" ++
    "    <td style='border: 1px solid #ddd; padding: 8px;'>" ++ person.id ++ "</td>\n" ++
    "    <td style='border: 1px solid #ddd; padding: 8px;'>" ++ person.name ++ "</td>\n" ++
    "    <td style='border: 1px solid #ddd; padding: 8px;'>" ++ (now().year - person.joining.year as String) ++ "</td>\n" ++
    "    <td style='border: 1px solid #ddd; padding: 8px;'>" ++ person.email ++ "</td>\n" ++
    "</tr>"
)




---
body ++  tableHead ++ (tableRows joinBy "\n" )++ conclusion