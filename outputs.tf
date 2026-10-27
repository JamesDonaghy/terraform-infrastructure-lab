output "project_name" {
  description = "The full project name including environment"
  value       = module.project_info.project_name
}

output "filename" {
  description = "Path to the generated project info file"
  value       = module.project_info.filename
}
