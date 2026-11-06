# Testing your Importing Knowledge - Part 3

The lecturer uses the **Terraform Registry’s argument reference** to add a `tags` map to the imported EC2 resource block. The tag must match what already exists in AWS.

His first attempt uses the wrong Name value, so `terraform plan` proposes changing **`terraform test`** → **`terraform import`**. He corrects the configuration to preserve the existing name and adds `user_data_replace_on_change = false` to address the remaining difference in his example.
```text
Edit configuration → Run plan → Read differences → Adjust → Plan again
```
Once Terraform reports **“No changes. Your infrastructure matches the configuration,”** the imported instance is tracked in state and its configuration matches, without needing an apply.

**The goal of this exercise is to adopt existing infrastructure without altering it**. This is useful when introducing Terraform into a company that already has manually created resources.

You achieved the same result with your own instance’s Name tag, **`terraform-import`**. Your plan reached “No changes” without needing the extra user-data setting.