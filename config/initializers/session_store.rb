# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ftc_booking_system_session',
  :secret      => '8d78836df73e8248cd89a95a61a9f3cf4d571c51c7adca6e8004b3a12a1fb5e2b688dd56b93981f95c837e96d0cd92ed5dba2914767926bfb0fee12c4b5e034c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
