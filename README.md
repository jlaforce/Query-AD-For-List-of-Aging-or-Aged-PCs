# Query-AD-For-List-of-Aging-or-Aged-PCs
This script will scan your AD and Export a CSV list of Pcs that have not had activity, prior to your set number of days tolerance you input. 

# Requirements
1. You need to be an Admin with AD privileges.
2. You need to have the latest RSAT tools installed and enabled. I have tested this with the older physical install on the latest Windows 10, should work the same with the built in tools as well. 
3. Of course, make sure you set your local ExecutionPolicy from something other that "Disabled". 
