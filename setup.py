import setuptools

setuptools.setup(
    name='mddb_updater',
    version='0.1.2',
    description='IODA Metadata Database Updater',
    author='Alistair King, Mingwei Zhang',
    packages=setuptools.find_packages(),
    include_package_data=True,
    install_requires=[
        'pywandio==0.1.1',
        'py-radix',
        'psycopg2-binary',
        'requests',
        'pyipmeta==3.0.0'
    ],
    entry_points={'console_scripts': [
        # updater tool
        "mddb-updater = mddb_updater.mddb_updater:main",
    ]}
)
