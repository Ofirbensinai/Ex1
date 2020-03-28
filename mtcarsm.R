data(mtcars)
view(mtcars)

mtcars %>% 
  mutate(cyl = as_factor(cyl)) %>% 
  ggplot(aes(x = hp, y = mpg, color = cyl)) +
  geom_point()+ 
  geom_smooth(method="lm", size=1)
