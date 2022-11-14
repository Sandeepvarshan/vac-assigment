library(rvest)
library(robotstxt)
path = paths_allowed("https://www.imdb.com/chart/top/?sort=rk,asc&mode=simple&page=1")
link <-
  'https://www.imdb.com/chart/top/?sort=rk,asc&mode=simple&page=1'
web <- read_html(link)
name <- web %>%html_nodes(".titleColumn a")%>% html_text()
View(name)
year <- web %>%html_nodes(".secondaryInfo")%>% html_text()
View(year)
movie.year <- data.frame(name,year)
View(movie.year)
write.csv (movie.year, "My_movie data.csv")