
library("grid")

test_that("diamond draws", {
  for (color in c("green", "red", "purple")) {
    draw.diamond(color, "hollow")
    grid.newpage()
    draw.2.diamonds(color, "hollow")
    grid.newpage()
    draw.3.diamonds(color, "hollow")
    grid.newpage()
    draw.diamond(color, "shaded")
    grid.newpage()
    draw.2.diamonds(color, "shaded")
    grid.newpage()
    draw.3.diamonds(color, "shaded")
    grid.newpage()
    draw.diamond(color, "solid")
    grid.newpage()
    draw.2.diamonds(color, "solid")
    grid.newpage()
    draw.3.diamonds(color, "solid")
    grid.newpage()
  }
})

