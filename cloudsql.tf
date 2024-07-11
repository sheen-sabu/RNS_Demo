resource "google_sql_database_instance" "example_instance" {
  name             = "rns-db"
  database_version = "MYSQL_5_7"
  region           = "us-central1"

  settings {
    tier = "db-n1-standard-1"

    backup_configuration {
      enabled = true
    }
  }
}

resource "google_sql_database" "example_db" {
  name     = "rns-database"
  instance = google_sql_database_instance.example_instance.name
}
