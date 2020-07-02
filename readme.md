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