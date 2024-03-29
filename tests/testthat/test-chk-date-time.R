test_that("vld_date_time", {
  expect_false(vld_date_time(NULL))
  expect_false(vld_date_time(Sys.time()[-1]))
  expect_false(vld_date_time(Sys.time()[c(1, 1)]))
  expect_true(vld_date_time(Sys.time()))
})

test_that("chk_date_time", {
  time <- Sys.time()
  expect_identical(chk_date_time(time), time)
  expect_invisible(chk_date_time(Sys.time()))
  expect_chk_error(chk_date_time(1), "^`1` must be a date time [(]non-missing POSIXct scalar[)][.]$")
  expect_chk_error(chk_date(1, x_name = 1), "^1 must be a date [(]non-missing Date scalar[)][.]$")
})

test_that("vld_datetime", {
  rlang::local_options(lifecycle_verbosity = "quiet")
  expect_false(vld_datetime(NULL))
  expect_false(vld_datetime(Sys.time()[-1]))
  expect_false(vld_datetime(Sys.time()[c(1, 1)]))
  expect_true(vld_datetime(Sys.time()))
})

test_that("chk_datetime", {
  rlang::local_options(lifecycle_verbosity = "quiet")
  time <- Sys.time()
  expect_identical(chk_date_time(time), time)
  expect_invisible(chk_datetime(Sys.time()))
  expect_chk_error(chk_datetime(1), "^`1` must be a date time [(]non-missing POSIXct scalar[)][.]$")
  expect_chk_error(chk_date(1, x_name = 1), "^1 must be a date [(]non-missing Date scalar[)][.]$")
})
