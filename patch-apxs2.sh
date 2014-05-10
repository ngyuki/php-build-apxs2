#!/bin/bash

set -e
sed -i -e "/^INSTALL_IT\s*=/s|LIBEXECDIR='\$(INSTALL_ROOT)[^']*'|LIBEXECDIR='\$(prefix)'|" Makefile
