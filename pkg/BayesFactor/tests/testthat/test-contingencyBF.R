test_that("contingencyBF works", {
  data <- matrix(c(3, 6, 4, 9), nrow=2)
  expect_snapshot(contingencyTableBF(data, sampleType = 'poisson'))
  expect_snapshot(contingencyTableBF(data, sampleType = 'jointMulti', fixedMargin = 'rows'))
  expect_snapshot(contingencyTableBF(data, sampleType = 'jointMulti', fixedMargin = 'cols'))
  expect_snapshot(contingencyTableBF(data, sampleType = 'indepMulti', fixedMargin = 'rows'))
  expect_snapshot(contingencyTableBF(data, sampleType = 'indepMulti', fixedMargin = 'cols'))
  expect_snapshot(contingencyTableBF(data, sampleType = 'hypergeom'))
})
