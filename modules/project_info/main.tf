resource "local_file" "project_info" {
  content  = "Project: terraform-infrastructure-lab-${var.environment}\nManaged by Terraform\nLast updated: Stage 6\n"
  filename = "${path.module}/../../project-info.txt"
}
