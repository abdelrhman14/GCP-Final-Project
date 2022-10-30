#resource "google_service_account" "ec2-service-account" {
 # account_id = "ec2-service-account"
#}

#resource "google_project_iam_binding" "ec2-service-account-iam" {
 # project = "abdelrahmantarek-project"
 # role    = "roles/container.admin"
 # members = [
   # "serviceAccount:${google_service_account.ec2-service-account.email}",
  #]
#}