test_that("bad p values are handled correctly", {
    expect_error(
        proportionBF(0, N=0, p=0),
        'p must be between 0 and 1',
        fixed=TRUE)
    expect_error(
        proportionBF(0, N=0, p=1),
        'p must be between 0 and 1',
        fixed=TRUE)
    expect_error(
        proportionBF(0, N=0, p=-100),
        'p must be between 0 and 1',
        fixed=TRUE)
    expect_error(
        proportionBF(0, N=0, p=12),
        'p must be between 0 and 1',
        fixed=TRUE)
})

test_that("no samples is handled correctly", {
  expect_snapshot(proportionBF(0, N=0, p=0.5))
})

test_that("floor/ceiling values behave correctly", {
  expect_snapshot(proportionBF(  0, N=100, p=0.5))
  expect_snapshot(proportionBF(100, N=100, p=0.5))
})
