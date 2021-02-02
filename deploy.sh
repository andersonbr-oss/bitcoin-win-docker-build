#!/bin/bash

cd /base/bitcoin

make install DESTDIR=/base/deploy

make deploy DESTDIR=/base/deploy
