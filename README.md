Simple PowerShell TCP Port Scanner

This PowerShell script is a straightforward "living off the land" tool designed for quickly scanning TCP ports on a specified IP address or hostname. It's particularly useful for network administrators and security professionals looking to identify open ports without relying on third-party tools.
Features

    Flexible scanning over any specified range o f ports.
    Directly utilizes PowerShell, minimizing external dependencies.

Requirements

    PowerShell 5.1 or higher.
    Network access to the target IP or hostname.

Usage

Run the script by specifying the target IP address and port range:

powershell

.\ScanPorts.ps1 -IPAddress "target_IP" -StartPort start_port -EndPort end_port

Replace target_IP, start_port, and end_port with your target settings.
Contributing

Feedback and contributions are welcome. Feel free to fork and adapt as needed!
