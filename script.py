#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.11"
# dependencies = [
#   "structlog>=25.1.0",
# ]
# ///
import os

import structlog

loglevel_name = os.environ.get('LOGLEVEL', 'INFO').upper()
structlog.configure(
    wrapper_class=structlog.make_filtering_bound_logger(loglevel_name),
)
log = structlog.get_logger()


def main():
    log.info('doing stuff')


if __name__ == '__main__':
    main()
