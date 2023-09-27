e <- function(x) BayesFactor:::composeTerm(paste0(x, ' :`"\''))
p <- paste0

data('ToothGrowth')
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
colnames(ToothGrowth) <- paste0(colnames(ToothGrowth), ' :`"\'')

test_that('ttestBF accepts column names with special chars', {
  formula <- p(e('len'), '~', e('supp'))
  formula <- as.formula(formula)
  results <- ttestBF(formula=formula, data=ToothGrowth, progress = FALSE)
  expect_s4_class(results, "BFBayesFactor")
  expect_identical(length(results), 1L)
})

test_that('anovaBF accepts column names with special chars', {
  formula <- p(e('len'), '~', e('supp'))
  formula <- as.formula(formula)
  results <- anovaBF(formula=formula, data=ToothGrowth, progress = FALSE)
  expect_s4_class(results, "BFBayesFactor")
  expect_identical(length(results), 1L)

  formula <- p(e('len'), '~', e('supp'), '*', e('dose'))
  formula <- as.formula(formula)
  results <- anovaBF(formula=formula, data=ToothGrowth, progress = FALSE)
  expect_s4_class(results, "BFBayesFactor")
  expect_identical(length(results), 4L)
})

test_that('generalTestBF accepts column names with special chars', {
  data(puzzles)
  names(puzzles) <- paste0(colnames(puzzles), ' :`"\'')
  formula <- p(e('RT'), '~', e('shape'), '*', e('color'), '*', e('ID'))
  formula <- as.formula(formula)
  bf <- generalTestBF(formula, whichRandom=e('ID'), data = puzzles, progress = FALSE)
  expect_s4_class(bf, "BFBayesFactor")
  expect_identical(length(bf), 18L)
})

test_that("regressionBF accepts column names with special chars", {
  set.seed(0)
  x <- rnorm(100)
  a <- rnorm(100)
  y <- x + a + rnorm(100)
  data <- data.frame(y, x, a)
  colnames(data) <- paste0(colnames(data), ' :`"\'')
  formula <- as.formula(p(e('y'), '~', e('x'), '+', e('a')))
  bf <- regressionBF(formula, data, progress = FALSE)
  expect_s4_class(bf, "BFBayesFactor")
  expect_identical(length(bf), 3L)
})

