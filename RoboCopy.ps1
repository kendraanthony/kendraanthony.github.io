$log = ("C:\RoboLogs\logs_{0:MMddyyyy_HHmmss}.log" -f (get-date))


#create RoboLogs folder in C:



$optionRobo = @("/R:1","/W:1","/E","/MT:15","/LOG+:$log","/TEE","/ETA","/A-:SH")





#Net Use \\xx.xx.xx.xx\ShareName /u:xx.xx.xx.xx\admin





Robocopy.exe '\\Source' \\Destination $optionRobo

##remember to change to local non-networking location for destination