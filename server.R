#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  picture_options = list.files("Pictures")
  image = reactiveValues(data = NULL)

  observeEvent(input$shuffleImages, {
    image$data = sample(picture_options, 6, replace = F)
  })

    output$img1 = renderImage({
      validate(need(!is.null(image$data), "Please Click to Shuffle"))
      tmpfile = image_read(paste0("Pictures/", image$data[1])) %>%
        image_scale(300) %>%
        image_write(tempfile(fileext = 'jpg'))
      list(src = tmpfile, contentType = 'image/jpeg')
    })

    output$img2 = renderImage({
      validate(need(!is.null(image$data), "Please Click to Shuffle"))
      tmpfile = image_read(paste0("Pictures/", image$data[2])) %>%
        image_scale(300) %>%
        image_write(tempfile(fileext = 'jpg'))
      list(src = tmpfile, contentType = 'image/jpeg')
    })

    output$img3 = renderImage({
      validate(need(!is.null(image$data), "Please Click to Shuffle"))
      tmpfile = image_read(paste0("Pictures/", image$data[3])) %>%
        image_scale(300) %>%
        image_write(tempfile(fileext = 'jpg'))
      list(src = tmpfile, contentType = 'image/jpeg')
    })

    output$img4 = renderImage({
      validate(need(!is.null(image$data), "Please Click to Shuffle"))
      tmpfile = image_read(paste0("Pictures/", image$data[4])) %>%
        image_scale(300) %>%
        image_write(tempfile(fileext = 'jpg'))
      list(src = tmpfile, contentType = 'image/jpeg')
    })

    output$img5 = renderImage({
      validate(need(!is.null(image$data), "Please Click to Shuffle"))
      tmpfile = image_read(paste0("Pictures/", image$data[5])) %>%
        image_scale(300) %>%
        image_write(tempfile(fileext = 'jpg'))
      list(src = tmpfile, contentType = 'image/jpeg')
    })

    output$img6 = renderImage({
      validate(need(!is.null(image$data), "Please Click to Shuffle"))
      tmpfile = image_read(paste0("Pictures/", image$data[6])) %>%
        image_scale(300) %>%
        image_write(tempfile(fileext = 'jpg'))
      list(src = tmpfile, contentType = 'image/jpeg')
    })

}
