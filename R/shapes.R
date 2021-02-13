
#' @import grid
draw.diamond <- function(color, fill, c=0.5) {
  y1 = c + 0.1
  y2 = c - 0.1
  if(!fill=="solid") {
    grid.polyline(
      x=c(0.25, 0.5, 0.5, 0.75, 0.75, 0.5, 0.5, 0.25),
      y=c(c, y1, y1, c, c, y2, y2, c),
      id=c(1, 1, 2, 2, 3, 3, 4, 4),
      gp=gpar(col=color, lwd=3)
    )
  }
  if (fill=="shaded") {
    gap <- 0.5 / 32
    x <- 0.25 + gap
    m0 <- -0.1 / 0.25
    m1 <- - m0
    for (i in 1:32) {
      if(i < 16) {
        y0 <- (m0) * x + c - (m0 * 0.25)
        y1 <- (m1) * x + c - (m1 * 0.25)
      } else {
        y0 <- (m1) * x + c - (m1 * 0.75)
        y1 <- (m0) * x + c - (m0 * 0.75)
      }
      grid.lines(
        x=c(x, x),
        y=c(y0, y1),
        gp=gpar(col=color, lwd=1)
      )
      x <- x + gap
    }
  }
  if (fill=="solid") {
    grid.polygon(
      x=c(0.25, 0.5, 0.5, 0.75, 0.75, 0.5, 0.5, 0.25),
      y=c(c, y1, y1, c, c, y2, y2, c),
      gp=gpar(col=color, lwd=3, fill=color)
    )
  }
}

draw.2.diamonds <- function(color, fill) {
  draw.diamond(color, fill, c=0.66)
  draw.diamond(color, fill, c=0.33)
}

draw.3.diamonds <- function(color, fill) {
  draw.diamond(color, fill, c=0.75)
  draw.diamond(color, fill)
  draw.diamond(color, fill, c=0.25)
}

