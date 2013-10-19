# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Cms::Application.config.secret_key_base = '7dfaccbe4999494730c46407ea42c027533bee586f24368b9fd10aceb4ed7acce46db75ef481c0e59d84002eb18c845822e3e65ac3160f202c46f31acb526827'
