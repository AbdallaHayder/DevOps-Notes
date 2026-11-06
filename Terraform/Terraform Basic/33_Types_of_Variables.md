# Types of Variables

**Terraform’s `type` setting describes the kind of value a variable accepts**. Previously, you used `string` for `"t2.micro"`. This lesson introduces individual values and ways to group them.

Primitive types hold one simple value:
| Type | Meaning | Example |
|---|---|---|
| `string` | Text | `"Ubuntu"` |
| `number` | Whole or fractional number | `42` or `6.28` |
| `bool` | True/false value | `true` |

Strings use quotes; numbers and booleans don’t.

**Complex types group values together**. The lecture covers these three examples:
```text
# List: ordered values of the same type
  variable "example_list" {
    type    = list(string)
    default = ["flour", "sugar", "eggs"]
  }

# Map: named keys with values of the same type
  variable "example_map" {
    type    = map(number)
    default = {
      flour = 500
      sugar = 200
    }
  }

# Object: specified attributes can have different types
  variable "example_object" { 
    type = object({ 
        name = string
        amount = number
        required = bool
    })
    default = {
        name     = "flour"
        amount   = 500
        required = true
    }
  }
```
Using the lecturer’s cooking analogy, a **string** names an ingredient, a **number** gives its quantity, and a **bool** says whether it’s needed. A **list** groups ingredients, a **map** associates ingredients with quantities, and an **object** combines different kinds of information into a structured record.

**The key distinction**: lists and maps use a common element type; objects define a type for each named attribute. These are the complex types covered here, not Terraform’s complete type system.