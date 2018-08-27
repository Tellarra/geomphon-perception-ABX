# concatenation file 
#create a Strings object-- each row is a string in the ordered Strings object

############read file 1
strings = Read Strings from raw text file: "fileone.txt"
n = Get number of strings

for i to n
   select strings
   nameone$ = Get string... i
   Read from file... 'nameone$'
     Rename... fileone_'i'
endfor

############read file 2
stringstwo = Read Strings from raw text file: "filetwo.txt"
n = Get number of strings

for i to n
   select stringstwo
   nameone$ = Get string... i
   Read from file... 'nameone$'
     Rename... filetwo_'i'
endfor

############read file 3

#read file 3 
stringsthree = Read Strings from raw text file: "filethree.txt"
n = Get number of strings

for i to n
   select stringsthree
   namethree$ = Get string... i
   Read from file... 'namethree$'
   Rename... filethree_'i'
endfor

############read file 4
stringsfour = Read Strings from raw text file: "filefour.txt"
n = Get number of strings

for i to n
   select stringsfour
   namefour$ = Get string... i
   Read from file... 'namefour$'
   Rename... filefour_'i'
endfor

############read file five 
 
stringsfive = Read Strings from raw text file: "filefive.txt"
n = Get number of strings

for i to n
   select stringsfive
   namefive$ = Get string... i
   Read from file... 'namefive$'
   Rename... filefive_'i'
endfor

############read file six 
stringssix = Read Strings from raw text file: "filesix.txt"
n = Get number of strings

for i to n
   select stringssix
   namethree$ = Get string... i
   Read from file... 'namesix$'
   Rename... filesix_'i'
endfor

############select all the files in order
for i to n
     select Sound fileone_'i'
     plus Sound filetwo_'i'
     plus Sound filethree_'i'
     plus Sound filefour_'i'
     plus Sound filefive_'i'


#########concatenate the sounds 
Concatenate recoverably

######## save the file 
select Sound chain
Write to WAV file... 'i'.wav
 endfor