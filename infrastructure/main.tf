provider "netlify" {
  token = "${var.netlify_token}"
}

resource "netlify_site" netlify_site {
  name = "${var.app_name}"
  custom_domain = "${var.site_name}"
  repo {
    provider = "github"
    dir = "src"
    repo_path = "ajcrites/explosionpills.com"
    repo_branch = "master"
  }
}
