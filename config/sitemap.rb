# Change this to your host. See the readme at https://github.com/lassebunk/dynamic_sitemaps
# for examples of multiple hosts and folders.
host "www.visionhealthandfitness.co.uk"

sitemap :site do
  url root_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url membership_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url opening_times_url, last_mod: Time.now, change_freq: "monthly", priority: 1.0
  url gym_facilities_url, last_mod: Time.now, change_freq: "monthly", priority: 1.0
  url classes_boxing_url, last_mod: Time.now, change_freq: "monthly", priority: 1.0
  url personal_training_url, last_mod: Time.now, change_freq: "monthly", priority: 1.0
  url classes_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url contact_url, last_mod: Time.now, change_freq: "monthly", priority: 1.0
end

# Ping search engines after sitemap generation:
#
ping_with "http://#{host}/sitemaps/sitemap.xml"
