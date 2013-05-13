Bro Module for Detecting Bitcoin Mining Hosts
=============================================

This script module for Bro can detect Bitcoin mining traffic that
uses `getwork <https://en.bitcoin.it/wiki/Getwork>`_,
`getblocktemplate <https://en.bitcoin.it/wiki/Getblocktemplate>`_,
or `Stratum <http://mining.bitcoin.cz/stratum-mining/>`_
mining protocols over TCP or HTTP.

See mining.bro for more details on how it works.

Installation
------------

::

    cd <prefix>/share/bro/site
    git clone https://github.com/jsiwek/bro_bitcoin.git bitcoin
    echo "@load bitcoin" >> local.bro
