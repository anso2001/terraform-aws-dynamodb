variable "name" {
  description = "The name of the table, this needs to be unique within a region."
  type        = string
}

variable "billing_mode" {
  description = "Controls how you are charged for read and write throughput and how you manage capacity. The valid values are PROVISIONED and PAY_PER_REQUEST. Defaults to PROVISIONED."
  type        = string
  default     = "PROVISIONED"
}

variable "read_capacity" {
  description = "The number of read units for this table. If the billing_mode is PROVISIONED, this field is required."
  type        = string
  default     = null
}

variable "write_capacity" {
  description = "The number of write units for this table. If the billing_mode is PROVISIONED, this field is required."
  type        = string
  default     = null
}

variable "hash_key" {
  description = "The attribute to use as the hash (partition) key. Must also be defined as an attribute, see below."
  type        = any
}

variable "range_key" {
  description = "The attribute to use as the range (sort) key. Must also be defined as an attribute, see below."
  type        = any
  default     = null
}

variable "attribute" {
  description = "List of nested attribute definitions"
  type        = list(map(string))
  default = []
}