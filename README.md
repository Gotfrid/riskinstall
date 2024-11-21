# safe-package-repo
Package and repository for safe installation of R packages

```r
score <- pkg_ref("rlang") |>
  pkg_assess() |>
  pkg_score() |>
  summarize_scores()

# score: 0.4196723
```