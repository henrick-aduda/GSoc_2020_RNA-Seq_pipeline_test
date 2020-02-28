library(ballgown) #loading ballgown package

# Importing output of table Tablemaker into R using Ballgown. 
#Kind note: I renamed my output files directory from table maker from 'long_read_liver_tablemaker_output' to 'tablemaker_output_liver_C1'
# I did this using mv command on the linux terminal.
bg1_brain_C1 = ballgown(samples = "/home/henrick/tablemaker/tablemaker-2.1.1.Linux_x86_64/table_maker_output_brain_c1/sample_01_brain", meas='all')
bg2_liver_C1 = ballgown(samples = "/home/henrick/tablemaker/tablemaker-2.1.1.Linux_x86_64/table_maker_output_liver_c1/sample_01_liver", meas='all')

#Obtaining FPKM matrix using texpr function 
transcript_fpkm_brain_C1 = texpr(bg1_brain_C1, 'FPKM')
transcript_fpkm_liver_C1 = texpr(bg2_liver_C1, 'FPKM')

#writing fpkm matrix obtained to a csv file
write.csv(transcript_fpkm_brain_C1, file = "transcript_fpkm_brain_C1.csv", quote = TRUE, 
            eol = "\n", na = "NA", row.names = FALSE)

#saving the first 1000 lines of the FPKM matrix produced by Ballgown into a new CSV file
# I saved it into a new csv file so that I keep the original csv intact. 
# Also I invoked bash scripting by invoking bash using system()function
system('head -1000 /home/henrick/tablemaker/tablemaker-2.1.1.Linux_x86_64/
       transcript_fpkm_brain_C1.csv > /home/henrick/tablemaker/
       tablemaker-2.1.1.Linux_x86_64/transcript_fpkm_brain_C1_1000.csv')

#Thats all for now. For real this time. lol
