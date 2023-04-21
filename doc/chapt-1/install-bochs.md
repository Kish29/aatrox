# INSTALL Bochs

1. download the latest version of Bochs.

```shell
wget https://sourceforge.net/projects/bochs/files/bochs/2.7/bochs-2.7.tar.gz
```

2. decompress the Bochs archive file.

```shell
tar -zxvf bochs-2.7.tar.gz
```

3. write your own configure file.

```shell
#! /bin/fish
./configure     \
        --prefix=/home/${your_host_name}/bochs   \
        --enable-debugger       \
        --enable-iodebug        \
        --enable-x86-debugger   \
        --enable-x86-64 \
        --with-x11      \
        --with-x        \
        --enable-all-optimizations      \
        --enable-a20-pin        \
        --enable-long-phy-address       \
        --enable-logging
```

4. use make & make install to install the Bochs.

```shell
make
make install
```

5. create links for Bochs binary files.

```shell
sudo ln /home/${your_host_name}/bochs/bin/* .
sudo cp -R /home/${your_host_name}/bochs/share /usr/share/bochs
```

6. [optional] create man page entry for Bochs.

```shell
sudo cp -R /home/${your_host_name}/bochs/share/man/* /usr/local/man
```

