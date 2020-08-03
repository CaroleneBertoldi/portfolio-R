#install.packages("shinydashboard")
library(shinydashboard)

sidebar = dashboardSidebar(
  sidebarMenu(
    menuItem("Home", 
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
    menuItem("Special Values", 
             icon = icon('line-chart'),
             tabName="aula02-03"
    ),
    menuItem("Data e hora", 
             icon = icon('line-chart'),
             tabName="aula02-04"
    ),
    menuItem("Sequências", 
             icon = icon('line-chart'),
             tabName="aula02-05"
    ),
    menuItem("Dados aleatórios", 
             icon = icon('line-chart'),
             tabName="aula03-01"
    ),
    menuItem("Controle de fluxos e funções", 
             icon = icon('line-chart'),
             tabName="aula03-02"
    ),
    menuItem("Environments", 
             icon = icon('line-chart'),
             tabName="aula03-03"
    ),
    menuItem("Leitura de arquivos", 
             icon = icon('line-chart'),
             tabName="aula04-01"
    )
  )
)

body = dashboardBody(
  tabItems(
    tabItem(tabName = "home",
            includeHTML("www/Home.html")
    ),
    tabItem(tabName = "aluno",
            includeHTML("www/Sobre-o-aluno.html")
    ),
    tabItem(tabName = "aula01",
            includeHTML("www/Aula01.html")
    ),
    tabItem(tabName = "aula02-01",
            includeHTML("www/Aula02-01.html")
    ),
    tabItem(tabName = "aula02-02",
            includeHTML("www/Aula02-02.html")
    ),
    tabItem(tabName = "aula02-03",
            includeHTML("www/Aula02-03.html")
    ),
    tabItem(tabName = "aula02-04",
            includeHTML("www/Aula02-04.html")
    ),
    tabItem(tabName = "aula02-05",
            includeHTML("www/Aula02-05.html")
    ),
    tabItem(tabName = "aula03-01",
            includeHTML("www/Aula03-01.html")
    ),
    tabItem(tabName = "aula03-02",
            includeHTML("www/Aula03-02.html")
    ),
    tabItem(tabName = "aula03-03",
            includeHTML("www/Aula03-03.html")
    ),
    tabItem(tabName = "aula04-01",
            includeHTML("www/Aula04-01.html")
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




