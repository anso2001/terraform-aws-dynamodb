module "test_dynamodb" {
  source         = "../"
  name           = "test_dynamodb_yellow_submarine"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "ID"
  range_key      = "BookTitle"

  attribute = [
    {
      name = "ID"
      type = "S"
    },
    {
      name = "BookTitle"
      type = "S"
    },
  ]
}