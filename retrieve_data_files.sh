mkdir -p data

scp loki:/data/routing/routeviews-prefix2as/routeviews-rv2-latest.pfx2as.gz data/
scp loki:/data/external/netacuity-dumps/country_codes.csv data/
scp loki:/data/external/natural-earth/polygons/ne_10m_admin_1.regions.v3.0.0.processed.polygons.csv.gz data/
scp loki:/data/external/gadm/polygons/gadm.counties.v2.0.processed.polygons.csv.gz data/
scp loki:/data/external/netacuity-dumps/Edge-processed/netacq-4-blocks.latest.csv.gz data/
scp loki:/data/external/netacuity-dumps/Edge-processed/netacq-4-locations.latest.csv.gz data/
scp loki:/data/external/netacuity-dumps/Edge-processed/netacq-4-polygons.latest.csv.gz data/


# -p data/routeviews-rv2-latest.pfx2as.gz -c data/country_codes.csv -r data/ne_10m_admin_1.regions.v3.0.0.processed.polygons.csv.gz -C data/gadm.counties.v2.0.processed.polygons.csv.gz -b data/netacq-4-blocks.latest.csv.gz -l data/netacq-4-locations.latest.csv.gz -P data/netacq-4-polygons.latest.csv.gz
