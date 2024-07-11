resource "google_cloud_run_service" "example_service" {
  name     = "rns-service"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "path-to-docker-repo" 
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
