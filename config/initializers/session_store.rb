# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iSamba_session',
  :secret      => '8098f86a1eb2dd13c36bcec1fefc204e21f4d8e3545925b08d2d1d553fb32c6483aa5878cb4352c60cd10f405d8ac49ae1a598855b4d20be98fcf35dd88e6d86'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
