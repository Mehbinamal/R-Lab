# Read paragraph from file
paragraph <- paste(readLines("paragraph.txt"), collapse=" ")

# Split the paragraph into words
words <- unlist(strsplit(paragraph, "\\s+"))

# a. Count the total number of words
total_words <- length(words)
cat("Total number of words:", total_words, "\n")

# b. Calculate the average word length
word_lengths <- nchar(words)
average_length <- mean(word_lengths)
cat("Average word length:", round(average_length, 2), "characters\n")

# c. Identify and print the longest word
longest_word <- words[which.max(nchar(words))]
cat("Longest word:", longest_word, "\n")

# d. Replace all occurrences of a specific word with another word
word_to_replace <- "sample"
replacement_word <- "example"
modified_paragraph <- gsub(word_to_replace, replacement_word, paragraph)
cat("Modified paragraph with '", word_to_replace, "' replaced by '", replacement_word, "':\n", modified_paragraph, "\n")

