# # comando para importar: 
# # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lakeformation_resource_lf_tag

# resource "aws_lakeformation_resource_lf_tag" "example" {
#   database {
#     name = aws_glue_catalog_database.example.name
#   }

#   lf_tag {
#     key   = aws_lakeformation_lf_tag.example.key
#     value = "stowe"
#   }
# }