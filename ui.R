ui <- navbarPage("Dashboard Final - Análise de Dados",
                 
                 # Primeira aba
                 tabPanel("Análise Geral",
                          sidebarLayout(
                            sidebarPanel(
                              selectInput("variavel_x", "Selecione a variável para o eixo X:", 
                                          choices = c("velocidade_media_mbps", "n_dispositivos_conectados", "n_usuarios_internet")),
                              
                              selectInput("variavel_y", "Selecione a variável para o eixo Y:", 
                                          choices = c("n_usuarios_internet", "velocidade_media_mbps", "n_dispositivos_conectados")),
                              
                              colourInput("cor_pontos", "Escolha a cor dos pontos:", value = "red")
                            ),
                            
                            mainPanel(
                              plotOutput("grafico_geral")
                            )
                          )
                 ),
                 
                 # Segunda aba
                 tabPanel("Análise temporal das cidades da região Sudeste",
                          sidebarLayout(
                            sidebarPanel(
                              selectInput("variavel_sudeste", "Selecione a variável para análise temporal:",
                                          choices = c("velocidade_media_mbps", "n_dispositivos_conectados", "n_usuarios_internet")),
                              
                              colourInput("cor_linha", "Escolha a cor da linha:", value = "blue")
                            ),
                            
                            mainPanel(
                              plotOutput("grafico_sudeste")
                            )
                          )
                 )
)