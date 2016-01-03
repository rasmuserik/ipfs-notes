# ipfs-notes

This is just a quick scratchpad for my own notes when diving into ipfs...

Written January 2016, may be out of sync

# Log

- 2016-01-03 starting playing with ipfs, - have kept an eye on algorithms, and code progress online, but neither installed nor played with it locally yet. starting now.

# Wishlist/use cases

- as developer getting to know the code
  - code: less spread out, fewer repositories to explore
  - single entry for documentation, ie. https://github.com/ipfs/specs/blob/master/libp2p/8-implementations.md and 
  - single roadmap, operational entries, ie. next task, and who is working on it
     - https://github.com/ipfs/pm/blob/js-ipfs/roadmap/ROADMAP.js-ipfs.md  and ??
     - merge cpatain log of js-ipfs and js-libp2p
- how I would like to use it
  - easy ipfs server. Ie. http-server with ipfs-hash as root, and ipfs-gateway.
    - setup `npm install ipfs` autostart it with `pm2`.
    - automatic pool disk-space ie. allow other to use it, in exchange of duplication of own content
    - config: hash to server as root + encryption key if encrypted. port to host on.
    - this is probably already possible
  - distributed file system/sync between computers, and also on android.
  - infrastructure for distributed/decentral js-application
    - p2p communication between clients. Would be awesome if ipfs-gateway also facilitated webrtc p2p-sockets.

# Exploring the sourceipfs-js

This seems to be dispersed across many different repositories, which makes it a bit difficult to get the bigger picture. Overviews are:

- https://github.com/ipfs/js-ipfs main repository
- https://github.com/diasdavid/js-libp2p
- https://github.com/ipfs/pm/blob/js-ipfs/roadmap/ROADMAP.js-ipfs.md


NB: captain.log:

- https://github.com/ipfs/js-ipfs/issues/30
- https://github.com/diasdavid/js-libp2p/issues/6

which contains links to 36 repositories

- abstract interfaces, including badge and tests, and no source
  - diasdavid/abstract-connection
  - diasdavid/abstract-peer-routing
  - diasdavid/abstract-record-store
  - diasdavid/abstract-stream-muxer
  - diasdavid/abstract-transport
- the rest
  - diasdavid/js-bitswap
  - diasdavid/js-libp2p
  - diasdavid/js-ipld
  - diasdavid/js-libp2p-distributed-record-store
  - diasdavid/js-libp2p-kad-record-store
  - diasdavid/js-libp2p-kad-routing
  - diasdavid/js-libp2p-mdns-discovery
  - diasdavid/js-libp2p-ping
  - diasdavid/js-libp2p-railing
  - diasdavid/js-libp2p-random-walk
  - diasdavid/js-libp2p-record
  - diasdavid/js-libp2p-spdy
  - diasdavid/js-libp2p-swarm
  - diasdavid/js-libp2p-tcp
  - diasdavid/js-libp2p-udp
  - diasdavid/js-libp2p-udt
  - diasdavid/js-libp2p-utp
  - diasdavid/js-merkledag-store
  - diasdavid/js-multistream
  - diasdavid/js-peer-id
  - diasdavid/js-peer-info
  - diasdavid/libp2p-website
  - diasdavid/webcrypto
  - ipfs/api
  - ipfs/js-ipfs
  - ipfs/js-ipfs-repo
  - ipfs/pm
  - ipfs/specs especially the libp2p part
  - jbenet/js-multiaddr
  - jbenet/js-multihash
  - jbenet/js-multihashing


Quickly hacked dependency graph (dot+shell+js, there exist better solutions, but this was quicker to make than to find a tool):

<img src=deps.png>


Concatenate ipfsdoc to single html

    cat repos/ipfs_specs/libp2p/*.md | pandoc -o repos/doc.html

open github pages of all repositories
    firefox `cat ipfsjs-repos.lst | sed -e 's/^/https:\\/\\/github.com\\//'`



# getting started with ipfs.

# Questions

- where is the current focus of js-ipfs development? Does something happen somewhere else than on github?
- what does the "Record Store Compatible" padge in distribured record store refer to?
    - each abstract store/... repos has a badge for compatible implementations
