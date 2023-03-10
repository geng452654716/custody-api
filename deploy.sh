#!/usr/bin/env bash
set -o errexit #abort if any command fails

# build API-MPC/zh
#docker run --rm --name slate -v $(pwd)/build/API-MPC/zh:/srv/slate/build -v $(pwd)/API-MPC/zh/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-MPC/zh/includes:/srv/slate/source/includes chainupcustody/slate build
## build API-MPC/en
#docker run --rm --name slate -v $(pwd)/build/API-MPC/en:/srv/slate/build -v $(pwd)/API-MPC/en/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-MPC/en/includes:/srv/slate/source/includes chainupcustody/slate build
#
## build API-WaaS-V2/zh
#docker run --rm --name slate -v $(pwd)/build/API-WaaS-V2/zh:/srv/slate/build -v $(pwd)/API-WaaS-V2/zh/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WaaS-V2/zh/includes:/srv/slate/source/includes chainupcustody/slate build
## build API-WaaS-V2/en
#docker run --rm --name slate -v $(pwd)/build/API-WaaS-V2/en:/srv/slate/build -v $(pwd)/API-WaaS-V2/en/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WaaS-V2/en/includes:/srv/slate/source/includes chainupcustody/slate build
#
## build API-WAPI/zh
#docker run --rm --name slate -v $(pwd)/build/API-WAPI/zh:/srv/slate/build -v $(pwd)/API-WAPI/zh/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WAPI/zh/includes:/srv/slate/source/includes chainupcustody/slate build
## build API-WAPI/en
#docker run --rm --name slate -v $(pwd)/build/API-WAPI/en:/srv/slate/build -v $(pwd)/API-WAPI/en/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WAPI/en/includes:/srv/slate/source/includes chainupcustody/slate build


docker run --rm --name slate -v $(pwd)/build/zh/latest/API-MPC:/srv/slate/build -v $(pwd)/API-MPC/zh/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-MPC/zh/includes:/srv/slate/source/includes chainupcustody/slate build
# build API-MPC/en
docker run --rm --name slate -v $(pwd)/build/en/latest/API-MPC:/srv/slate/build -v $(pwd)/API-MPC/en/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-MPC/en/includes:/srv/slate/source/includes chainupcustody/slate build

# build API-WaaS-V2/zh
docker run --rm --name slate -v $(pwd)/build/zh/latest/API-WaaS-V2:/srv/slate/build -v $(pwd)/API-WaaS-V2/zh/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WaaS-V2/zh/includes:/srv/slate/source/includes chainupcustody/slate build
# build API-WaaS-V2/en
docker run --rm --name slate -v $(pwd)/build/en/latest/API-WaaS-V2:/srv/slate/build -v $(pwd)/API-WaaS-V2/en/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WaaS-V2/en/includes:/srv/slate/source/includes chainupcustody/slate build

# build API-WAPI/zh
docker run --rm --name slate -v $(pwd)/build/zh/latest/API-WAPI:/srv/slate/build -v $(pwd)/API-WAPI/zh/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WAPI/zh/includes:/srv/slate/source/includes chainupcustody/slate build
# build API-WAPI/en
docker run --rm --name slate -v $(pwd)/build/en/latest/API-WAPI:/srv/slate/build -v $(pwd)/API-WAPI/en/index.html.md.erb:/srv/slate/source/index.html.md.erb -v $(pwd)/API-WAPI/en/includes:/srv/slate/source/includes chainupcustody/slate build

sudo cp $(pwd)/index.html $(pwd)/build

sudo cp $(pwd)/CNAME $(pwd)/build

# docker run --rm --name slate -p 4567:4567 -v $(pwd)/source:/srv/slate/source gengyujian/slate serve


# git subtree push --prefix build origin gh-pages
