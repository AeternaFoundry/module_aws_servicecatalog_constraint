variable "servicecatalog_constraints" {
  description = <<EOT
Map of servicecatalog_constraints, attributes below
Required:
    - parameters
    - portfolio_id
    - product_id
    - type
Optional:
    - accept_language
    - description
    - region
EOT

  type = map(object({
    parameters      = string
    portfolio_id    = string
    product_id      = string
    type            = string
    accept_language = optional(string)
    description     = optional(string)
    region          = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

