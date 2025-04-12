server <- function(input, output, session) {
  
  # Primeiro gráfico (geral)
  output$grafico_geral <- renderPlot({
    ggplot(tech_filter, aes(x = .data[[input$variavel_x]], y = .data[[input$variavel_y]])) +
      geom_point(color = input$cor_pontos, size = 2) +
      geom_smooth(method = "lm", se = TRUE, color = "blue") +
      labs(x = input$variavel_x, y = input$variavel_y,
           title = paste("Gráfico de", input$variavel_x, "vs.", input$variavel_y)) +
      theme_minimal()
  })
  
  # Segundo gráfico (foco no Sudeste, evolução temporal)
  output$grafico_sudeste <- renderPlot({
    ggplot(tech_sudeste, aes(x = as.Date(mes_ano), y = .data[[input$variavel_sudeste]])) +
      geom_line(color = input$cor_linha, size = 1) +
      labs(x = "Data (Mês/Ano)", y = input$variavel_sudeste,
           title = paste("Evolução Temporal:", input$variavel_sudeste, "no Sudeste")) +
      theme_minimal()
  })
  
}