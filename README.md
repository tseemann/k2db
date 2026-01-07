[![CI](https://github.com/tseemann/k2db/actions/workflows/CI.yml/badge.svg)](https://github.com/tseemann/k2db/actions/workflows/CI.yml)
[![Version](https://img.shields.io/github/v/release/tseemann/k2db)](https://github.com/tseemann/k2db/releases)
[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
![Don't judge me](https://img.shields.io/badge/Language-Perl_5-steelblue.svg)
[![Bioconda Downloads](https://img.shields.io/conda/dn/bioconda/k2db.svg)](https://anaconda.org/bioconda/k2db)

# k2db

Kraken 2 database management tool

## Quick Start

```
% k2db -v
0.2.1

# LIst local databases in $KRAKEN2_DB_PATH
% k2db -l
+---+-------+-----------+--------+------------+
| N | ALIAS | NAME      | SIZE   | DATE       |
+---+-------+-----------+--------+------------+
| 1 |       | pludpf    |  16  B | 2025-10-23 |
| 2 | fungi | myco_2024 |   3 GB | 2026-01-07 |
+---+-------+-----------+--------+------------+

# List available databases at Ben Langmeads site
% kddb -L

FIXME

```

## Installation

Please use [Bioconda](https://bioconda.github.io/user/install.html)
```
% conda install -c bioconda k2db # COMING SOON
$ k2db -h
```

## References

* [Kraken2 databases](https://benlangmead.github.io/aws-indexes/k2)

## Citation

Seemann T, `k2db` **Github** https://github.com/tseemann/k2db

## Feedback

Please submit via the [Github Issues page](https://github.com/tseemann/k2db/issues)

## Licence

[GPL v3](https://raw.githubusercontent.com/tseemann/k2db/master/LICENSE)

## Author

* [Torsten Seemann](https://tseemann.github.io/)
