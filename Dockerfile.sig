-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

FROM alpine:latest
RUN apk add --no-cache alpine-sdk bash git libxml2-dev libxslt-dev python3 python3-dev py3-pip vim
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir beancount fava 
-----BEGIN PGP SIGNATURE-----

iQFHBAEBCAAxFiEEHSWovP/5bCeJ+ywIwdqJPA9xy3wFAls+038THHBsZWJpc0Bo
b3RtYWlsLmNvbQAKCRDB2ok8D3HLfPCmB/4lzI028MXcXGWHFYzNINy6u6JTJ6F/
+7zO/Fw6l8SvI5V6cHWrgxCptKsoPXv/M4X8YrgPnROS3WkX49/qJJDUW0VrGlBi
gA7DowDAM0w7//fSmCflylLMRKsbDnW07TqVCPb464T8pZDJkAcsmEZJ+pGFM4Zp
3QHIEURqewK/THdMdezo5aWeNwqhuZ0Hg46Wh4UxB23WgpmWjCKFTAUp3utpnd9O
8eKKLxXeQlYxy2D9g/oXaphy+PmumkELpE6VH81U0j1AC6FeaRupiT7NG1NSAGA8
1U3LIdJbeZOyD2yxeWzMhXXtBF28LQbhGHUl7IFa3W6gbdZSj2UrAcCK
=bQ3s
-----END PGP SIGNATURE-----
