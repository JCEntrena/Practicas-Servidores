datos <- data.frame(
  tipo = rep(c("SD", "USB", "local", "montado"), 3),
  tiempo = c(
    164.7760424, 221.2543601, 56.76091546, 56.01896587, 
    164.0982842, 224.3036715, 57.06485375, 56.52148665, 
    163.0958745, 223.1245536, 56.42844681, 55.466811
  )
)

anova <- aov(tiempo ~ tipo, datos)
summary(anova)
