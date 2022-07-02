# require 'active_record/pgcrypto'
# # Replace the default environment variable name with your own value/key.
# ActiveRecord::PGCrypto::SymmetricCoder.pgcrypto_key = LOAD_FROM_KMS
# ActiveRecord::PGCrypto::SymmetricCoder.pgcrypto_options = 'cipher-algo=aes256, unicode-mode=1'
# ActiveRecord::PGCrypto::SymmetricCoder.pgcrypto_encoding = 'utf8'