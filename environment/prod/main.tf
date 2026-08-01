title = "Custom Gitleaks config"

[[rules]]
id = "terraform-password"
description = "Detect passwords"
regex = '''(?i)(password|passwd|pwd)\s*[:=]\s*["']?[^"'\s]+'''
tags = ["password"]

[[rules]]
id = "terraform-username"
description = "Detect usernames"
regex = '''(?i)(username|user_name|admin_username)\s*[:=]\s*["']?[^"'\s]+'''
tags = ["username"]