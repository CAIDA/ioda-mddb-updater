# Metadata Database Updater

## Install

Install libipmeta 3.0+ first:
```bash
sudo apt install -y libipmeta2-dev
```

Install this package:
```bash
python2 setup install
```

## Test Run

Download data files first: (must be within CAIDA network)
```bash 
retrieve_data_files.sh
```

Run the following command with `DATABASE_URL` environment variable:
```bash
DATABASE_URL=postgresql://USER:PASS@HOST/DB mddb-updater -p data/routeviews-rv2-latest.pfx2as.gz -c data/country_codes.csv -r data/ne_10m_admin_1.regions.v3.0.0.processed.polygons.csv.gz -C data/gadm.counties.v2.0.processed.polygons.csv.gz -b data/netacq-4-blocks.latest.csv.gz -l data/netacq-4-locations.latest.csv.gz -P data/netacq-4-polygons.latest.csv.gz
```

## Run in Docker

### Required Environment Variables

To run the script in a dockerized environment, you will need the following environment variables defined in one or multiple `env` files:

- swift variables:
  - `OS_PROJECT_NAME`
  - `OS_USERNAME`
  - `OS_PASSWORD`
  - `OS_AUTH_URL`
  - `OS_IDENTITY_API_VERSION`
- database variable:
  - `DATABASE_URL`

### Build the updater

Checkout the repository and run

``` bash
docker build -f Dockerfile -t mddb_updater .
```

### Run the updater

```bash
docker run --rm --env-file=PATH_TO_ENV_FILE mddb_updater
```

You can put the environment variables in separate env files. If so, you just need to add multiple `--env-file` options, 
like `--env-file=ENV_FILE_1` and `--env-file=ENV_FILE_2`.

