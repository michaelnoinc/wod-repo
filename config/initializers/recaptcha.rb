Recaptcha.configure do |config|
  config.site_key  = '6Ld1wksUAAAAACDU7Y4ibLR6EO6cT0bNs6h2PFqX'#Rails.application.secrets.recaptcha_public_key
  config.secret_key = '6Ld1wksUAAAAAPtfkPrp6VIKm07pVCs0J6MZiYIA'#Rails.application.secrets.recaptcha_secret_key
end