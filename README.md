# Tryz

Scripts to build and run [Ryzom Core 4](https://github.com/ryzom/ryzomcore).<br>
Based on [nimetu/docky](https://github.com/nimetu/docky).

----

**CAUTION !**<br>
This project is still *in progress*, and **does not build/run** the full set, yet.<br>
Folders, files, containers are subject to be changed at any time.

----

## Usage

```sh
git clone git@github.com:tivins/tryz.git
cd tryz
./tryz.sh build-server
./tryz.sh run
```

## Structure

    .
    ├── config        # Server configurations (mariadb,httpd,php,shard).
    ├── client        # Build and run client.
    ├── (data)        # Created during installation. Will contains persistent data.
    ├── docker        # Stuff for Docker (docker-compose.yml, Dockerfiles)
    ├── scripts       # Script used for installation and use.
    ├── (tmp)         # Created during installation. Can be deleted after installation.
    │   └── src       # Extracted Ryzom code sources.
    ├── README.md     # This file.
    └── tryz.sh       # CLI for installation and run.

## Configuration

The `config` folder contains the configuration files for the servers inside Docker (php, mariadb, &hellip;),
and the creation of shards' databases (nel, ams, &hellip;).

    config
    ├── db              # Databases configurations
    │   ├── initdb.d    # SQL files executed on install in alphabetical order.
    │   └── my.cnf      # MariaDB configuration file.
    ├── php             # PHP configuration files.
    ├── httpd           # HTTPd configuration files.
    ├── ryzom-server    # Ryzom configuration files.
    └── tryz.cnf        # Ecosystem configuration file.

The databases structure is described in the RyzomCore sources inside the [`web/private_php/setup/sql`](https://github.com/ryzom/ryzomcore/tree/dea792a3f75dbb8af2f6eeb4b2f123044ad7bcfe/web/private_php/setup/sql) folder. The inserts to populate those databases for a development environment are defined in the [`configure_shard_dev.sql`](https://github.com/ryzom/ryzomcore/tree/dea792a3f75dbb8af2f6eeb4b2f123044ad7bcfe/web/private_php/setup/sql/configure_shard_dev.sql) file.

## Edit shard data

(to do)
