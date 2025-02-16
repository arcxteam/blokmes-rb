require 'net/http'
require 'json'
require 'uri'
require 'colorize'
require 'securerandom'
require 'websocket-client-simple'

# Color codes
RED = "\e[31m"
BLUE = "\e[34m"
GREEN = "\e[32m"
YELLOW = "\e[33m"
RESET = "\e[0m"

# Define AM as a blue bullet symbol
AM = "•".blue

# Define UL as an underline effect
UL = "\e[4m"

$proxy_tokens = {}
$email_input = nil
$api_token = nil
$password_input = nil

# Display coder sign
def coder_mark
  puts <<~HEREDOC
     ██████╗██╗   ██╗ █████╗ ███╗   ██╗███╗   ██╗ ██████╗ ██████╗ ███████╗
    ██╔════╝██║   ██║██╔══██╗████╗  ██║████╗  ██║██╔═══██╗██╔══██╗██╔════╝
    ██║     ██║   ██║███████║██╔██╗ ██║██╔██╗ ██║██║   ██║██║  ██║█████╗  
    ██║     ██║   ██║██╔══██║██║╚██╗██║██║╚██╗██║██║   ██║██║  ██║██╔══╝  
    ╚██████╗╚██████╔╝██║  ██║██║ ╚████║██║ ╚████║╚██████╔╝██████╔╝███████╗
     ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝
    =========================================================================
                Welcome To Validator Extensions Build on Docker
                - CUANNODE By Greyscope&Co, Credit By Arcxteam -
    =========================================================================
  HEREDOC
end

# Get email & password from user
def get_login_credentials
  print "Enter your BlockMesh email: "
  $email_input = gets.chomp
  print "Enter your BlockMesh password: "
  $password_input = gets.chomp
end

# Authenticate with proxy support
def authenticate_with_proxy(proxy_uri)
  return $api_token if $api_token
  uri = URI("https://api.blockmesh.xyz/api/get_token")
  data = { email: $email_input, password: $password_input }.to_json
  headers = { "Content-Type" => "application/json" }

  # Parse proxy details
  proxy = URI.parse(proxy_uri)
  http = Net::HTTP.new(
    uri.host,
    uri.port,
    proxy.host,
    proxy.port,
    proxy.user,
    proxy.password
  )
  http.use_ssl = true if uri.scheme == 'https'

  begin
    response = http.post(uri.path, data, headers)
    raise "HTTP Error" unless response.is_a?(Net::HTTPSuccess)
    $api_token = JSON.parse(response.body)['api_token']
    puts "[#{Time.now.strftime('%H:%M:%S')}] Login successful via proxy!".green
    $api_token
  rescue => e
    puts "[#{Time.now.strftime('%H:%M:%S')}] Login failed: #{e}".red
    nil
  end
end

def process_proxy_connection
  system('clear')
  coder_mark
  get_login_credentials  # Ask for login credentials
  print "Enter your proxy (e.g., http://user:pass@host:port or socks5://host:port): "
  proxy_uri = gets.chomp

  puts "\nRunning Proxy Connection...\n\n"
  loop do
    api_token = authenticate_with_proxy(proxy_uri)
    next unless api_token
    puts "[#{Time.now.strftime('%H:%M:%S')}] Authentication successful via proxy!".green
    sleep(1)
  end
end

def main
  system('clear')
  coder_mark
  puts "\n1. Direct Connection\n2. Proxy Connection"
  print "Choose (1/2): "
  choice = gets.chomp.to_i
  case choice
  when 1
    process_direct_connection
  when 2
    process_proxy_connection
  else
    puts "Invalid choice. Exiting..."
  end
end

main if __FILE__ == $0
