devtools::load_all()

options(repos = "https://raw.githubusercontent.com/Gotfrid/riskinstall/refs/heads/main")

install_packages(
  pkgs = "rlang",
  type = "source",
  risk_threshold = 0.3
)
