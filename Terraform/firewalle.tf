resource "google_compute_firewall" "my-firewall-iap" {
  name    = "firewall-to-allow-iap"
  network = google_compute_network.iti-vpc.id

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }
  direction     = "INGRESS"
  source_ranges = ["35.235.240.0/20"]
}
