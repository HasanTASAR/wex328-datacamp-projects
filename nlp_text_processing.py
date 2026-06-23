# DataCamp Natural Language Processing - Tokenization & Stopwords
import nltk
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords

# Sample text for processing
text = "DataCamp provides excellent courses for Data Engineering and Natural Language Processing!"

# Convert text to lowercase and split into tokens (words)
tokens = word_tokenize(text.lower())

# Filter out common English stopwords
# nltk.download('punkt')
# nltk.download('stopwords')
stop_words = set(stopwords.words('english'))
filtered_tokens = [word for word in tokens if word.isalnum() and word not in stop_words]

# Display the output
print("Original Text:", text)
print("Filtered Tokens:", filtered_tokens)
