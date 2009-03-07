# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails-digg-tutorial_session',
  :secret      => '096f6108f4955324dcd52079b5d1310fc9975d19b5930ca53be7dc33bea6ea91f51507d9a1410232fd6c50f5a57b93c315bcbce3d34e7f747154b0ffc3f4db59'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
