param (
    [string]$message = "Updated files"
)

git add -A
git commit -m "$message"
git push

