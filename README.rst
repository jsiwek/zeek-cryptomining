Zeek Package To Detect Cryptocurrency (Bitcoin) Mining
======================================================

This script/package for Zeek can detect Bitcoin, Litecoin, PPCoin, or
other cryptocurrency mining traffic that uses `getwork
<https://en.bitcoin.it/wiki/Getwork>`_, `getblocktemplate
<https://en.bitcoin.it/wiki/Getblocktemplate>`_, or `Stratum
<http://mining.bitcoin.cz/stratum-mining/>`_ mining protocols over TCP
or HTTP.  Note that the module cannot currently detect the Bitcoin P2P
protocol, which is different from the mining protocols.

See mining.bro for more details on how it works.

Installation
------------

Via `zkg <https://docs.zeek.org/projects/package-manager/en/stable/>`_::

    zkg install jsiwek/zeek-cryptomining

Manually::

    cd <prefix>/share/zeek/site
    git clone https://github.com/jsiwek/zeek-cryptomining cryptomining
    echo "@load cryptomining" >> local.zeek
