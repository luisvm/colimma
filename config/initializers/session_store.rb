# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_colimma_session',
  :secret      => 'c55bee9f829ef833c23cbd169e4ced52d94421af5bf6fd4d7730a52db9a19db21875c0865ce2392d512d066cddb5f839ec6a060c680807a7e10c1a9988826a8b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
