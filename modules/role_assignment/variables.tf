variable "object_id" {
  description = "The object ID of the user, group, or service principal to assign roles to"
  type        = string

}
variable "role_definition_name" {
  description = "The name of the role definition to assign"
  type        = string
}