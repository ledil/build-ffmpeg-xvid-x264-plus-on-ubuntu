#!/bin/bash
#This script assumes vanilla ubnutu 12.04 no extra repositories.

check_if_root () {
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
}

get_prerequisitpackages () {
#apt-get update
apt-get install -f git-core build-essential checkinstall libopenjpeg-dev libfaac-dev \
libfaad-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libsdl1.2-dev \
libtheora-dev libvdpau-dev libvorbis-dev libxfixes-dev zlib1g-dev libdirac-dev yasm
}


check_for_conflicting_packages () {
if [[ -z $(which ffmpeg || true) ]]
        then
                echo "Installing"
                        install_x264

        else
                echo "conflicting install exists, aborting"
                        exit 1
fi

if [[ -z $(which ffmpeg || true) ]]
        then
                echo "Installing"
                        install_xvid

        else
                echo "conflicting install exists, aborting"
                        exit 1
fi
if [[ -z $(which ffmpeg || true) ]]
        then
                echo "Installing"
                       install_ffmpeg

        else
                echo "conflicting install exists, aborting"
                        exit 1
fi


}

install_x264 () {
#x264 is a free software library for encoding video streams into the H.264/MPEG-4 AVC format. GPL

#get x264
cd ~/

#check that we got it
if [ ! -d "x264" ];
    then
        echo "Cloning x264 repo"
                git clone git://git.videolan.org/x264

                        if [ ! -d "x264" ];
                                then
                                        echo "Clone Failed, not retrying"
                                                exit 1
                        fi
fi




cd x264
git pull

is_264x_installed="$(dpkg -l | grep x264 | grep "$(./version.sh| head -n1 | awk '{print $3}')")"

if [[ -z "$is_264x_installed" ]];
        then
                ./configure --enable-static --disable-asm
                make
                sudo checkinstall --pkgname=x264 --pkgversion="3:"$(./version.sh| head -n1 | awk '{print $3}')"-from-script" --backup=no --deldoc=yes --fstrans=no --default
fi

}


install_xvid () {
# XVID'S WEBSITE http://www.xvid.org/
cd ~/
if [ ! -d "xvidcore" ];
    then
        echo "Downloading and extracting xvid"
                wget http://downloads.xvid.org/downloads/xvidcore-1.3.2.tar.gz
                tar xvf ./xvidcore-1.3.2.tar.gz

                        if [ ! -d "xvidcore" ];
                                then
                                        echo "Clone Failed, not retrying"
                                                exit 1
                        fi
fi

if [ -f "xvidcore-1.3.2.tar.gz" ];
        then
                rm xvidcore-1.3.2.tar.gz
fi

is_xvid_installed="$(dpkg -l | grep xvid-dev-1.3.2 )"
if [[ -z "$is_xvid_installed" ]];
        then
                cd xvidcore/build/generic/
                ./configure
                make
                sudo checkinstall --pkgname=xvid-dev-1.3.2 --pkgversion="1.3.2-from-script" --backup=no --deldoc=yes --fstrans=no --default
fi


}


install_ffmpeg () {
# INSTALL FFMPEG
cd ~/

if [ ! -d "ffmpeg" ];
    then
        echo "Downloading and extracting ffmpeg"
                git clone --depth 1 git://git.videolan.org/ffmpeg
                        if [ ! -d "ffmpeg" ];
                                then
                                        echo "Clone Failed, not retrying"
                                                exit 1
                        fi
fi

is_ffmpeg_installed="$(dpkg -l | grep ffmpeg-0.11.1-from-git-source )"
if [[ -z "$is_ffmpeg_installed" ]];
        then
                cd ffmpeg
                ./configure --enable-gpl --enable-version3 --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb \
                 --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libxvid --enable-nonfree --enable-libfaac --enable-postproc \
                 --enable-x11grab --enable-pthreads --enable-libopenjpeg --enable-zlib --enable-bzlib --enable-filter=movie --enable-avfilter
                make
                checkinstall --pkgname=ffmpeg-0.11.1-from-git-source --pkgversion="0.11.1-from-script" --backup=no --deldoc=yes --fstrans=no --default
fi

}

show_decoding_options () {
ffmpeg -formats
}

check_if_root
get_prerequisitpackages
check_for_conflicting_packages
show_decoding_options
                                                                                