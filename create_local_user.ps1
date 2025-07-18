# 🧑‍💻 Create a local user and add to 'Users' group

Param(
    [string]$Username = "demo_user",
    [string]$Password = "SecurePassword123!"
)

# Create user
New-LocalUser -Name $Username `
    -Password (ConvertTo-SecureString $Password -AsPlainText -Force) `
    -FullName "$Username Local User" `
    -Description "Created via IT automation script"

# Add to Users group
Add-LocalGroupMember -Group "Users" -Member $Username

# Output
Write-Output "✅ User '$Username' has been successfully created and added to the 'Users' group."
