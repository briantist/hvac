listener "tcp" {
  address = "0.0.0.0:8199"
  cluster_address = "127.0.0.1:8201"
  # tls_cert_file = "tests/config_files/server-cert.pem"
  # tls_key_file  = "tests/config_files/server-key.pem"
  tls_cert_file = "/vault/config/server-cert.pem"
  tls_key_file  = "/vault/config/server-key.pem"
}

disable_mlock = true

default_lease_ttl = "768h"
max_lease_ttl = "768h"

# storage "consul" {
#   address = "127.0.0.1:8500"
#   path    = "vault"
# }

storage "consul" {
  address = "consul:8500"
  path    = "vault"
}
