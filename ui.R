#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define UI for application that draws a histogram
ui = dashboardPage(
  dashboardHeader(title = "Game Image Shuffler"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Shuffle", tabName = 'shuffle', icon = icon('upload')),
      tags$br()
    )
  ),
  dashboardBody(
    custom_blue,
    tabItems(
      tabItem(tabName = 'shuffle',
              h1("Game Image Shuffler", align="center"),
              fluidRow(
                box(width = 12, status = "primary",
                    # can make a markdown with directions if wanted
                    # fluidRow(
                    #   column(width = 8,
                    #          uiOutput("introduction"),
                    #   ),
                    column(width = 12,
                           fluidRow(
                             column(
                               width = 12,
                               div(style="float:right", actionButton("shuffleImages", "Click to Shuffle"))
                             )
                           ),
                    ),
                    fluidRow(
                      column(
                        width = 4,
                        box(width = 12,
                            imageOutput("img1")
                        )
                      ),
                      column(
                        width = 4,
                        box(width = 12,
                            imageOutput("img2")
                        )
                      ),
                      column(
                        width = 4,
                        box(width = 12,
                            imageOutput("img3")
                        )
                      )
                    ),
                    fluidRow(
                      column(
                        width = 4,
                        box(width = 12,
                            imageOutput("img4")
                        )
                      ),
                      column(
                        width = 4,
                        box(width = 12,
                            imageOutput("img5")
                        )
                      ),
                      column(
                        width = 4,
                        box(width = 12,
                            imageOutput("img6")
                        )
                      )
                    )
                )
              )
      )
    )
  )
)

