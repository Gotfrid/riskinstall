# riskinstall

Package and repository for safe installation of R packages.

## About

This is an R package that provides an interface to a repository of R packages,
where each package has a risk score assigned to it, computed with `{riskmetric}` package.

## Installation

```r
pak::pak("Gotfrid/riskinstall")
```

## How to use

```r
options(repos = "https://raw.githubusercontent.com/Gotfrid/riskinstall/refs/heads/main") # nolint

install_packages(
  pkgs = "rlang",
  type = "source",
  risk_threshold = 0.3
)
```
