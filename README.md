# Nessus Docker Parser
A simple Docker container to invoke a Nessus parser Perl script and export the output file as Base64

This Docker container effectively allows you to input a URL with the .nessus file you wish to parse, then runs the Nessus Parser script provided by [Melcara](http://melcara.com). The container then returns a B64 output of the resulting .xlsx spreadsheet.

In order to run the container, you just need to pass the URL of the .nessus file in the $NESSUS_EXPORT environment variable, then the container will output the .xlsx file in B64 format.