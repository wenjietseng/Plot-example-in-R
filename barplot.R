ggplot(train, aes(x = factor(marital,
       levels = names(sort(table(train$marital)))))) +
  geom_bar() +
  labs(x = "Marital", y = "Counts") +
  coord_flip()

# sort levels and present the trend
