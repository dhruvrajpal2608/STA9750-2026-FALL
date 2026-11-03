ggplot(diamonds, aes(x=carat, y=price)) + 
  geom_point(alpha=0.3) + 
  xlab("Weight of Round Cut Diamond (Carat)") + 
  ylab("Price (US Dollars)") + 
  labs(title="Price as a function of Carat Weight", 
       caption="Data from the ggplot2 R package.") + 
  stat_smooth(se=FALSE, 
              color="red4") +
  scale_y_continuous(labels=scales::dollar) + 
  theme_bw()