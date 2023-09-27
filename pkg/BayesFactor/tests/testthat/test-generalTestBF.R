data(puzzles)

test_that('generalTestBF works', {
  bf <- generalTestBF(RT ~ shape*color*ID, whichRandom="ID", data = puzzles, progress = FALSE)
  expect_s4_class(bf, "BFBayesFactor")
  expect_identical(length(bf), 18L)
})
