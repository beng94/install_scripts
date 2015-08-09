#!/bin/bash

install_gcc()
{
    echo "installing gcc"
    sudo apt-get update
    sudo apt-get install gcc
}

install_python()
{
    echo -e "\e[32minstalling python\e[0m"
    sudo apt-get install python-dev
}

install_m4()
{
    echo -e "\e[32minstalling m4\e[0m"
    cd /home/bence/Downloads
    wget "ftp://ftp.gnu.org/gnu/m4/m4-1.4.tar.gz"
    tar xf m4-1.4.tar.gz
    cd m4-1.4
    ./configure && make && sudo make install
}

install_libffi()
{
    wget "ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz"
    cd /home/bence/Downloads
    tar xf libffi-3.2.1.tar.gz
    cd libffi-3.2.1
    ./configure && make && sudo make install
}


install_libtool()
{
    echo -e "\e[32minstalling libtoll\e[0m"
    sudo apt-get install libtool-dev
}

install_eventlog()
{
    echo -e "\e[32minstalling eventlog\e[0m"
    cd /home/bence/Downloads
    wget "https://my.balabit.com/downloads/eventlog/0.2/eventlog_0.2.12.tar.gz"
    tar xf eventlog_0.2.12.tar.gz
    cd eventlog-0.2.12
    ./configure && make && sudo make install
}

install_flex()
{
    echo -e "\e[32minstalling flex\e[0m"
    wget "http://downloads.sourceforge.net/project/flex/flex-2.5.39.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fflex%2Ffiles%2F&ts=1439138077&use_mirror=kent"
    cd /home/bence/Downloads
    tar xf flex-2.5.39.tar.gz
    cd flex-2.5.39
    ./configure && make && sudo make install
}

install_bison()
{
    echo -e "\e[32minstalling bison\e[0m"
    wget "http://ftp.gnu.org/gnu/bison/bison-3.0.tar.xz"
    cd /home/bence/Downloads/
    tar xf bison-3.0.tar.xz
    cd bison-3.0
    ./configure && make && sudo make install
}

install_zlib()
{
    echo -e "\e[32minstallin zlib\e[0m"
    wget "http://zlib.net/zlib-1.2.8.tar.gz"
    cd /home/bence/Downloads
    tar xf zlib-1.2.8.tar.gz
    cd zlib-1.2.8
    ./configure && make && sudo make install
}

install_glib()
{
    echo -e "\e[32minstalling glib\e[0m"
    wget "http://ftp.gnome.org/pub/gnome/sources/glib/2.37/glib-2.37.93.tar.xz"
    cd /home/bence/Downloads
    tar xf glib-2.44.1.tar.xz
    cd glib-2.44.1
    ./configure && make && sudo make install
}

install_libpcre()
{
    echo -e "\e[32minstalling libpcre\e[0m"
    wget "http://sourceforge.net/projects/pcre/files/pcre/8.37/pcre-8.37.tar.gz/download"i
    cd /home/bence/Downloads
    tar xf pcre-8.36.tar.gz
    cd pcre-8.36
    ./configure && make && sudo make install
}

install_syslog-ng()
{
    cd /home/bence/Desktop
    git clone https://github.com/balabit/syslog-ng.git
    cd /home/bence/Desktop/syslog-ng
    ./autogen.sh
    ./configure --enable-debug --disable-java --prefix=/home/bence/Desktop/syslog-ng_exec
    make && sudo make install
}


install_gcc
install_python
install_m4
install_libffi
install_eventlog
install_libtool
install_flex
install_bison
install_zlib
install_glib
install_libpcre
install_syslog-ng
