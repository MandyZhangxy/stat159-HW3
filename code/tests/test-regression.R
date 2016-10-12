source("../functions/regression-functions.R")

test_that("add is numberic", {
  expect_that(add(1,1), equals(2))
  expect_that(add("a","b"), throws_error())
})
