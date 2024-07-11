resource "google_cloud_run_domain_mapping" "example_mapping" {
  name         = "rns-mapping"
  location     = "us-central1"
  spec {
    route_name = google_cloud_run_service.example_service.name
  }
}
