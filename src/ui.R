#install.packages("shinydashboard")
library(shinydashboard)

sidebar = dashboardSidebar(
  sidebarMenu(
    menuItem("Capa", 
             tabName="home", 
             icon=icon("home")
    ),
    menuItem("Sobre o aluno", 
             tabName="aluno",
             icon = icon("users")
    ),
    hr(),
    menuItem("Conceitos Básicos", 
             icon = icon('line-chart'), 
             tabName="aula01"
    ),
    menuItem("Matrizes", 
             icon = icon('line-chart'),
             tabName="aula02-01"
    ),
    menuItem("Explorando um dataset", 
             icon = icon('line-chart'),
             tabName="aula02-02"
    ),
    menuItem("Aula 03", 
             icon = icon('line-chart'),
             tabName="aula03-01"
    )
  )
)

body = dashboardBody(
  tabItems(
    tabItem(tabName = "home",
            h2("PÃ¡gina inicial"),
            h4("Fazer uma capa bonitinha ..."),
            h5("O que eu aprendi nas aulas de R")
    ),
    tabItem(tabName = "aluno",
            h4("Falar um pouco sobre o aluno / Grupo")
    ),
    tabItem(tabName = "aula01",
            includeHTML("Aula01.html")
    ),
    tabItem(tabName = "aula02-01",
            includeHTML("Aula02-01.html")
    ),
    tabItem(tabName = "aula02-02",
            includeHTML("Aula02-02.html")
    ),
    tabItem(tabName = "aula03-01",
            includeHTML("Aula03.html")
    )
  )
)

dashboardPage(header = dashboardHeader(title = "Portfólio R"),
              tags$head(
                tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
              ),
              skin = "purple",
              sidebar = sidebar,
              body = body)




