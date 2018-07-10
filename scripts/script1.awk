BEGIN { FS = "," }
{ print substr($1,1,16) "\t" NF }
