# Andrew Crites Personal Website
Hosted on Netlify + CloudFlare / asmallorange for DNS.

## Deployment

Create a Netlify account -- you will need a netlify token. Optionally you can
point this to your own domain via the `site_name` variable or omit it. Then you
can deploy the app to Netlify with Terraform:

    terraform plan \
      -var netlify_token=$TOKEN \
      -var app_name=$APP_NAME \
      -var site_name=$SITE_NAME \
      -out explosionpills.tfplan
    terraform apply explosionpills.tfplan
