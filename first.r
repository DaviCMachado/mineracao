library(shiny)
library(plotly)
library(ggplot2)
library(graphics)
library(httpgd)
library(explore)
install.packages("explore")

df1 = read.csv(url("https://www-usr.inf.ufsm.br/~joaquim/UFSM/DM/ds/vendas_lucro.csv"))
df1

df2 = read.csv(url("https://www-usr.inf.ufsm.br/~joaquim/UFSM/DM/ds/fakeMarvelData.csv"))
df2

plot(df1)

a = c(1:14)
plot(a)

data <- create_data_esoteric(df1)
data |> explore(b)


a = c(3,5,6,7,9,14,16,16,NA,27,34,50,61)
media = mean(a, na.rm=TRUE)
media
b = a
b[!complete.cases(b)] <- 99
b 
mediaB = mean(b)
mediaB



plot(b)
plot_ly(data = df, x = ~Index, y = ~Value, type = 'scatter', mode = 'lines+markers')


library(data.table)

plot_ly(b)

output$plot <- renderPlotly({
  plot_ly(data = data.frame(Index = seq_along(b), Value = b), 
           x = ~Index, y = ~Value, type = 'scatter', mode = 'lines+markers', 
           marker = list(size = 10)) %>%
    layout(title = "Plot of b",
           xaxis = list(title = "Index"),
           yaxis = list(title = "Value"))
})

