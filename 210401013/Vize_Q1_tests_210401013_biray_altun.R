# Test 1.1) 
library(testthat)

testthat::test_that("Global Workspace'te spotify_token adlı bir değişken olmalı", {
  expect_true(exists("spotify_token", envir = .GlobalEnv))
})

# Test 1.2) 
testthat::test_that("spotify_token adlı değişkenin tipi 'function' olmalı", {
  expect_true(is.function(spotify_token))
})

# Test 1.3)
testthat::test_that("spotify_token() çağrıldığında döndürdüğü çıktı bir liste olmalı", {
  result <- spotify_token()
  expect_true(is.list(result))
})

# Test 1.4)
testthat::test_that("spotify_token() çağrıldığında döndürdüğü listenin iki elemanı olmalı", {
  result <- spotify_token()
  expect_length(result, 2)
})

# Test 1.5)
testthat::test_that("spotify_token() çağrıldığında döndürdüğü listenin ilk elemanının ismi status_code olmalı", {
  result <- spotify_token()
  expect_true("status_code" %in% names(result))
})

# Test 1.6)
testthat::test_that("spotify_token() çağrıldığında döndürdüğü listenin ilk elemanının class'ı numeric olmalı", {
  result <- spotify_token()
  expect_true(is.numeric(result$status_code))
})

# Test 1.7)
testthat::test_that("spotify_token() çağrıldığında döndürdüğü listenin status_code adlı elemanının değeri 200'e eşit olmalı", {
  result <- spotify_token()
  expect_equal(result$status_code, 200)
})

# Test 1.8)
testthat::test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elemanının ismi token olmalı", {
  result <- spotify_token()
  expect_true
  