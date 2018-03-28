ggplot(train, aes(x = factor(marital,
       levels = names(sort(table(train$marital)))))) +
  geom_bar() +
  labs(x = "Marital", y = "Counts") +
  coord_flip()

# sort levels and present the trend

ggplot(dta_barplot, aes(x = pressure, y = m_comfort)) +
  geom_bar(stat = "identity", fill = "gray80") +
  geom_errorbar(aes(ymin = m_comfort - std_comfort,
                    ymax = m_comfort + std_comfort),
                width = .2, color = "gray20") +
  theme_bw() +
  labs(x = "Pressure in kPa", y = "Comfortness 1 - 7")
