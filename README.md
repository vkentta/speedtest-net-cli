# SPEEDTEST CLI Docker container

Official [SPEEDTEST CLI](https://www.speedtest.net/apps/cli), inside simple ubuntu container

## Usage

Human readable output

`docker run --rm vkentta/speedtest-net-cli --accept-license --accept-gdpr`

JSON output

`docker run --rm vkentta/speedtest-net-cli --accept-license --accept-gdpr -f json`

Display help

`docker run --rm vkentta/speedtest-net-cli --help`