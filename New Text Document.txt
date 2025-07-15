mkdir -p themes/dot-hugo/layouts/partials

for file in favicon manifest site-verifications basic-seo custom-script gtm crisp-chat search-index; do
  cat <<EOF > "themes/dot-hugo/layouts/partials/${file}.html"
<!-- Placeholder for ${file}.html -->
<!-- Add your custom HTML or Hugo template logic here -->
EOF
done
