# Handling Text Files
print("Handling Text Files")
file_name = 'my_file.txt'

print("read.table : ")
# Data frame without header
print("Data frame without header")
df <- read.table(file_name,              # TXT data file indicated as string or full path to the file
                 header = FALSE,    # Whether to display the header (TRUE) or not (FALSE)
                 sep = "",          # Separator of the columns of the file
                 dec = ".")         # Character used to separate decimals of the numbers in the file

print(df)

# Data frame with header
print("Data frame with header")
df <- read.table(file_name,              # TXT data file indicated as string or full path to the file
                 header = TRUE,    # Whether to display the header (TRUE) or not (FALSE)
                 sep = "",          # Separator of the columns of the file
                 dec = ".")         # Character used to separate decimals of the numbers in the file

# print("Header :")
# print(head(df))
print(df)
