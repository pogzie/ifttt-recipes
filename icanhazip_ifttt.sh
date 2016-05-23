#!/bin/bash
# By: Pogz Ortile
# Last Modified: 2016-05-23
# Notes: 
#       1.) The 'icanhazip' on the URL is the Event Name.
#       2.) Change the <key> with the key provided to you.
#		3.) Obviously you need a THEN action to catch the value. 
#				It could be sending you an email, logging to a spreadsheet, 
#				restarting your modem, emailing your ISP, etc.

echo date
echo "Checking IP" 
IP=$(curl icanhazip.com)
echo "$IP"
echo "Sending to IFTTT"
# Yeah the "'" is legit. 
curl -X POST -H "Content-Type: application/json" -d '{"value1":"'"$IP"'"}' https://maker.ifttt.com/trigger/icanhazip/with/key/<key>
echo ""
echo "Done." 