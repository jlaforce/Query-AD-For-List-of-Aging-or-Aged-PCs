## Set the minimum number of days you want ignore, this will scan for all machines that have no login activty 
##prior to this number
##Must be an integer, ::hope you could rationalize that, but... you know::
$Daysinactive = Read-Host "Input the minimum number of days that fits your activity tolerance. (i.e, 90) "

##Simple query built for scanning AD for the computers that have not been logged 
##into beyond your minimum threshold 
$time = (Get-Date).AddDays(-($Daysinactive))

##Here I grab what you want to name your export. 
$listname = Read-Host "What would you like to name the CSV file? (It will end in *.CSV)"

##Here is the magic that does the query.
##You can make it much larger past the 2000 results by changing ResultsPageSize. However, just sayin.. , you got bigger probs if that's true, haha. 
##You can Also add -Append to the export if you are going to run this script fairly often. 
Get-ADComputer -Filter {LastLogonDate -lt $time} -ResultPageSize 2000 -resultSetSize $null -Properties Name, OperatingSystem, SamAccountName, DistinguishedName, LastLogonDate | Export-Csv ".\$listname.csv" -NoTypeInformation
