<<head
 Most commands in this have their output pointing to /dev/null 
 so that it's a little easier to grab the resulting output.
 This helps overcome output size limitations as well in some
 automation platforms.
head

# Get Nessus export from environment variable URL
wget $NESSUS_EXPORT -O "export.nessus" > /dev/null 2>&1

# Run the Perl parser script
perl ./parse_nessus_xml.pl -f export.nessus > /dev/null 2>&1

# Find the XLSX outputm encode it as B64, then store in the $OUTPUT env var
OUTFILE=$(find . -name "nessus_report*")
OUTPUT=$(cat $OUTFILE | base64 -w 0)

# Echo the resulting output in JSON format
echo -n "$OUTPUT"
exit 0