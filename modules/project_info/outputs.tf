output "project_name" {
  description = "The full project name including environment"
  value       = "terraform-infrastructure-lab-${var.environment}"
}

output "filename" {
  description = "Path to the generated project info file"
  value       = local_file.project_info.filename
}
