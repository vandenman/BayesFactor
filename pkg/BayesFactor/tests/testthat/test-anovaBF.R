test_that("Puzzles example works", {
  data(puzzles)

  bf = anovaBF(RT ~ shape*color + ID, data = puzzles, whichRandom = "ID",
               iterations=1000, progress = FALSE)
  expect_s4_class(bf, "BFBayesFactor")
  expect_identical(length(bf), 4L)
})
