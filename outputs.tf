output "ssh_private_key" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}

output "host_url" {
  value = "http://${azurerm_public_ip.this.ip_address}:${local.port}"
}
