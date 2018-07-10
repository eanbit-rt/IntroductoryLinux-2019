# this script works on a Fasta file and counts the number of nucleotides per sequence.
# sequence data can be on multiple lines
BEGIN { nucl_counter = 0 }
# the "next" instruction ignores the selection rules not yet processed and jumps to the next record from the input file.
/^>/ { if (NR != 1) print "Sequence", seqname, "contains", nucl_counter, "nucleotides." ; seqname = substr($1,2) ; nucl_counter = 0 ; next }
{ nucl_counter = nucl_counter + length($0) } # incrments by the number of nucleotides seen on that record 
END { print "Sequence", seqname, "contains", nucl_counter, "nucleotides." }
