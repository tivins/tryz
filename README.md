# Tryz

Scripts to build and run [Ryzom Core 4](https://github.com/ryzom/ryzomcore).<br>
Based on [nimetu/docky](https://github.com/nimetu/docky).

----

**CAUTION !**<br>
This project is still *in progress*, and __does not build/run__ the full set yet.<br>
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
    ├── db            # Databases condifurations
    │   ├── initdb.d  # SQL files executed on install in alphabetical order.
    │   └── my.cnf    # MariaDB configuration file.
    └── tryz.cnf      # Ecosystem configuration file.

## Edit shard data

(to do)
