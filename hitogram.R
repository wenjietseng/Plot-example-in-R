# use census data on UCI ML database
library(ggplot2)
# age
ggplot(train, aes(x = age)) +
  geom_histogram(aes(y = ..density..),
                 color = "white", fill = "gray",
                 binwidth = 2 * IQR(train$age) /
                 (dim(train)[1]) ^ (1 / 3)) +
  geom_density() +
  labs(x = "Age", y = "Probability") +
  theme_bw()

ggplot(train, aes(x = age)) +
  geom_histogram(aes(y = ..count..),
                 color = "white", fill = "gray",
                 binwidth = 2 * IQR(train$age) /
                 (dim(train)[1]) ^ (1 / 3)) +
  labs(x = "Age", y = "Count") +
  theme_bw()
