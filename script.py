#!/usr/bin/env -S uv run --script
# vim: set ft=python :
# /// script
# requires-python = ">=3.11"
# dependencies = [
#   "libfelix>=0.9.1",
# ]
# ///
from libfelix.logging import configure_structlog_console_from_env, get_logger

configure_structlog_console_from_env()
log = get_logger()


def main():
    log.info('doing stuff')


if __name__ == '__main__':
    main()
