# Testing your Importing Knowledge - Part 2

After a successful import, **run `terraform` plan to check that your configuration matches the existing instance**. 
Import adds the resource to state, but doesn’t fill in every setting in your .`tf` file.

In the lecturer’s example, the plan proposes removing the instance’s **Name tag** because it exists in AWS but is missing from his resource block. Applying that plan would remove the tag.

He therefore adds the existing tags to his configuration, using the Registry’s **tags documentation** for the correct syntax. The plan also mentions `user_data_replace_on_change = false`, a setting controlling whether user-data changes trigger instance replacement.
```text
Import → Plan → Match configuration to existing settings → Plan again
```
**The goal is “No changes.**” Review each difference before applying, so importing doesn’t accidentally alter the existing instance.