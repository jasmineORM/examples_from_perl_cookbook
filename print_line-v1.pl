{\rtf1\ansi\ansicpg1252\cocoartf1038\cocoasubrtf360
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww9000\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\ql\qnatural

\f0\fs26 \cf0   #!/usr/bin/perl -w\
  # print_line-v1 - linear style\
  \
  @ARGV =  = 2 or die "usage: print_line FILENAME LINE_NUMBER\\n";\
  \
  ($filename, $line_number) = @ARGV;\
  open(INFILE, "<", $filename)\
    or die "Can't open $filename for reading: $!\\n";\
  while (<INFILE>) \{\
      $line = $_;\
      last if $. =  = $line_number;\
  \}\
  if ($. != $line_number) \{\
      die "Didn't find line $line_number in $filename\\n";\
  \}\
  print;\
}