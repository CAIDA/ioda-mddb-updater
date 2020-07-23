import setuptools

setuptools.setup(
    name='mddb_updater',
    version='0.1',
    description='IODA Metadata Database Updater',
    # url='https://github.com/CAIDA/bgphijacks-tools',
    author='Alistair King, Mingwei Zhang',
    # author_email='bgpstream-info@caida.org',
    packages=setuptools.find_packages(),
    include_package_data=True,
    install_requires=[
        'pywandio==0.1.1',
        'py-radix',
        'psycopg2-binary',
        'requests',
        'pyipmeta>=3'
    ],
    entry_points={'console_scripts': [
        # updater tool
        "mddb-updater = mddb_updater.mddb_updater:main",
    ]}
)
