
resource "aws_dynamodb_table" "dynamo_table" {
  name           = var.name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key
  
    dynamic "attribute" {
    for_each = var.attribute

    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }
}