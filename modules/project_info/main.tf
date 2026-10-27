resource "local_file" "project_info" {
  content  = "Project: terraform-infrastructure-lab-${var.environment}\nManaged by Terraform\n"
  filename = "${path.module}/../../project-info.txt"
}
