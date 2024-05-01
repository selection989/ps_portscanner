param(
    [Parameter(Mandatory=$true)]
    [string]$IPAddress,  # IP address/hostname to scan, mandatory parameter

    [Parameter(Mandatory=$true)]
    [int]$StartPort,     # Starting port, mandatory parameter

    [Parameter(Mandatory=$true)]
    [int]$EndPort        # Ending port, mandatory parameter
)

function Show-Usage {
    Write-Host "Usage: ScanPorts.ps1 -IPAddress <IP or Hostname> -StartPort <Starting Port> -EndPort <Ending Port>"
    Write-Host "Example: .\ScanPorts.ps1 -IPAddress '192.168.1.100' -StartPort 50 -EndPort 150"
    exit 1
}

# Check if the required parameters are present
if (-not $IPAddress -or -not $StartPort -or -not $EndPort) {
    Show-Usage
}

$StartPort..$EndPort | ForEach-Object {
    try {
        $tcpClient = New-Object Net.Sockets.TcpClient
        $tcpClient.Connect($IPAddress, $_)
        echo "TCP port $_ is open"
        $tcpClient.Close()
    } catch {
        # Do nothing or handle exceptions if you want to log closed ports or errors
    }
} 2>$null
