test_that("vld_atomic", {
  expect_true(vld_atomic(1))
  expect_true(vld_atomic(matrix(1:3)))
  expect_true(vld_atomic(character(0)))
  expect_false(vld_atomic(list(1)))

  skip_on_cran()
  if (sub("(R version )((\\d+\\.){2,2}\\d+)(.*)", "\\2", R.version$version.string) <= "4.4.0") {
    expect_true(vld_atomic(NULL))
  } else {
    expect_false(vld_atomic(NULL))
  }
})

test_that("chk_atomic", {
  expect_identical(chk_atomic(1), 1)
  expect_invisible(chk_atomic(1))
  expect_chk_error(chk_atomic(list(1)), "^`list[(]1[)]` must be atomic[.]$")
  expect_chk_error(chk_atomic(list(1), x_name = 1), "^1 must be atomic[.]$")
})
