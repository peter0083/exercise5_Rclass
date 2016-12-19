# S3 documentation for Peter

# S3 class name: MDSassignment()

# this S3 class takes four parameters:

# course number, lab number, difficulty-level (1 to 10), double assignment (TRUE or FALSE), and peer-review (TRUE or FALSE)

# this S3 class has a method that calculates the number of hours needed to complete the assignment:

# difficulty-level times 4, times 2 for double assignment, plus 1 for peer-review.

MDSassignment <- function(cID, l_num, diff, d_work, peer_r){
  if (typeof(cID) != "integer") stop("course ID must be integer")
  if (legnth(cID) != 3) stop("course ID must have 3 digits")
  value <- list(course_id = cID, lab_number = l_num, difficulty_level  = diff, double_assignment = d_work, peer_review = peer_r)
  attr(value, "class") <- "MDSassignment"
  attr
}

hours_needed.MDSassignment <- function(obj){
  work <- NaN
  if (MDSassignment$d_work = TRUE){
    work <- 1
  }
  peer <- NaN
  if (MDSassignment$peer_r = TRUE){
    peer <- 1
  }
  hours <- MDSassignment$diff * 4 + work * 2 + peer * 1
  print(hours)
}

library(testthat)

context("test MDSassignment object")

test_that("the number of hours needed is >= 0", {
  x <- MDSassignment(553, 4, 10, FALSE, FALSE)
  expected <- 10*4 + 1*2 + 0*1
 
  expect_identical(hours_needed.MDSassignment(x), expected)
})

test_that("the number of hours is a number", {
  x <- MDSassignment(553, 4, 10, FALSE, FALSE)
  expected <- 10*4 + 1*2 + 0*1
  
  expect_identical(typeof(hours_needed.MDSassignment(x)), typeof(expected))
})
