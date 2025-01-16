# PhotoRec Docker Container

A containerized version of PhotoRec data recovery tool, optimized for easy deployment and use in various environments including Unraid.

## Features

- Based on Debian Bullseye slim for minimal image size
- Includes latest stable PhotoRec/TestDisk
- Designed for easy mounting of devices and volumes
- Compatible with Unraid and other Docker environments

## Quick Start

```bash
# Pull the image
docker pull yourusername/photorec

# Run PhotoRec
docker run -it --privileged \
  --device=/dev/sdX \
  -v /path/to/output:/data \
  yourusername/photorec
```

## Usage in Unraid

1. Go to the Docker tab in Unraid web interface
2. Click "Add Container"
3. Fill in the template:
   - Repository: yourusername/photorec
   - Name: photorec
   - Network Type: Bridge
   - Volumes:
     - Host: /mnt/user/appdata/photorec
     - Container: /data
   - Extra Parameters: --privileged

## Building Locally

```bash
git clone https://github.com/yourusername/photorec-docker.git
cd photorec-docker
docker build -t yourusername/photorec .
```

## Security Note

This container requires privileged access to read from devices. Only run it with devices you trust and in environments where you understand the security implications.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.