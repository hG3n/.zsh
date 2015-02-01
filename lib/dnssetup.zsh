function enableCloudflareDNS()
{
  # set cloudflare dns servers
  networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1

  # flush dns cache
  sudo killall -HUP mDNSResponder
}

function resetDNS()
{
  # set cloudflare dns servers
  networksetup -setdnsservers Wi-Fi empty

  # flush dns cache
  sudo killall -HUP mDNSResponder

}
