# context("test-sf.R")
#
# data("hsh_sf", package = "gibble")
# ## a sf version of SpatialPolygons, SpatialLines, SpatialMultiPoints
# SPS <- hsh_sf[["poly"]]
# SLS <- hsh_sf[["line"]]
# MPS <- hsh_sf[["point"]]
#
# ## a MULTIPOLYGON
# P <- SPS[[1]]
# ## a vector of MULTIPOLYGONS
# PS <- SPS
#
# ## a Line
# L <- SLS[[1]]
# ## a Lines
# LS <- SLS
#
# test_that("sf ibble works", {
#   dSPS <- ibble(SPS)
#   expect_that(dim(dSPS), equals(c(9L, 5L)))
#   dSLS <- ibble(SLS, 1)
#   expect_that(dim(dSLS), equals(c(9L, 4L)))
#
#   dMPS <- ibble(MPS)
#   expect_that(dim(dMPS), equals(c(3L, 4L)))
#
#   dP <- ibble(P)
#   expect_that(dim(dP), equals(c(1L, 4L)))
#
#   dPS <- ibble(PS)
#   expect_that(dim(dPS), equals(c(6L, 5L)))
#
#   dL <- ibble(L)
#   expect_that(dim(dL), equals(c(1L, 3L)))
#
#   dLS <- ibble(LS)
#   expect_that(dim(dLS), equals(c(6L, 5L)))
#
# })
#
#
# test_that("sp gibble methods exist", {
#   gibble.SpatialPolygons(SPS) %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#    gibble.SpatialLines(SLS)  %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#    gibble.SpatialMultiPoints(MPS) %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type", "object"))
#
#    gibble.Polygons(PS) %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#    gibble.Lines(LS) %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#    gibble.Polygon(P) %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type", "subobject"))
#
#    gibble.Line(L) %>% expect_s3_class("tbl_df") %>%
#      expect_named(c("nrow", "ncol", "type"))
# })
#
# test_that("sp dispatch works", {
#   gibble(SPS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#   gibble(SLS)  %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#   gibble(MPS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "object"))
#
#   gibble(PS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#   gibble(LS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#   gibble(P) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject"))
#
#   gibble(L) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type"))
# })
#
#
# test_that("tests from silicate work", {
#   spobj <- minimal_mesh_sp
#   splineobj <- minimal_mesh_sp_line
#   gibble(spobj) %>% expect_s3_class("tbl_df")
#   gibble(splineobj) %>% expect_s3_class("tbl_df")
#
#   expect_that(gibble(hsh$line)$object, equals(c(1, 1, 1, 1, 1, 1, 2, 3, 3)))
#   expect_that(gibble(MPS)$object, equals(c(1L, 2L, 3L)))
#
# }
# )
