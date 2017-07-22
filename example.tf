# Configure the Heroku provider
provider "heroku" {
  email = "${var.heroku_email}"
  api_key = "${var.heroku_api_key}"
}

# Create a new application
resource "heroku_app" "default" {
  name = "heroku-terraforming-tenarai"
  region = "us"
  config_vars {
    REPEAT = "${var.repeat}"
  }
}

resource "heroku_addon" "database" {
  app  = "${heroku_app.default.name}"
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "logging" {
  app  = "${heroku_app.default.name}"
  plan = "papertrail:choklad"
}