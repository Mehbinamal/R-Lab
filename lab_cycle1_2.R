sentence <- readline(prompt = "Please enter a sentence: ")
cleaned_sentence <- gsub("[[:punct:]]","",sentence)
encryption <- function(sentence, shift){
  cleaned_sentence <- gsub("[[:punct:]]","",sentence)
  n <- nchar(cleaned_sentence)
  ascii_value <- as.integer(charToRaw(cleaned_sentence))
  
  for (i in 1:n) {
    if(ascii_value[i]!=32){
      if (ascii_value[i]>=65 && ascii_value[i]<=90){
        ascii_value[i] <- ((ascii_value[i]-65+shift)%%26)+65
      }
      if(ascii_value[i]>=97 && ascii_value[i] <=122){
        ascii_value[i] <- ((ascii_value[i]-97+shift)%%26)+97
      }
    }
  }
  encrypted_sentence <- rawToChar(as.raw(ascii_value))
  return(encrypted_sentence)
}

print(encryption(cleaned_sentence,3))
