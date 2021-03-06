build ffmpeg/xvid/x264 and others on Ubuntu 10 and 12.04
===============================

Builds and Installs encoding packages listed below on Ubuntu 10/12.04 and builds the latest stable releases of x264 xvid and ffmpeg

Packages for build env
----------------------
* git-core 
* build-essential 
* checkinstall 
* subversion

Packages to provide codecs/etc
--------------------------
* libopenjpeg-dev 
* libfaac-dev 
* libfaad-dev 
* libmp3lame-dev
* libopencore-amrnb-dev
* libopencore-amrwb-dev
* libsdl1.2-dev
* libtheora-dev
* libvdpau-dev
* libvorbis-dev
* libxfixes-dev
* zlib1g-dev
* libdirac-dev
* mediainfo

Packages Built
--------------
* x264 - a free software library for encoding video streams into the H.264/MPEG-4 AVC format. GPL
* XVID - http://www.xvid.org/ video codec
* SDL - http://www.libsdl.org/ cross-platform multimedia library
* MP4box - http://gpac.wp.mines-telecom.fr/ a multimedia packager
* FFmpeg - https://wiki.videolan.org/FFmpeg 
* Yasm - http://yasm.tortall.net/ Needed for lib264's extented cpu capabilities 

Output of ~# ffmpeg -formats
----------------------------
    ffmpeg version git-2012-11-20-07a8662 Copyright (c) 2000-2012 the FFmpeg developers
    built on Nov 20 2012 12:27:45 with gcc 4.6 (Ubuntu/Linaro 4.6.3-1ubuntu5)
    configuration: --enable-gpl --enable-version3 --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libxvid --enable-nonfree --enable-libfaac --enable-postproc --enable-x11grab --enable-pthreads --enable-libopenjpeg --enable-zlib --enable-bzlib --enable-filter=movie --enable-avfilter
    libavutil      52.  8.100 / 52.  8.100
    libavcodec     54. 73.100 / 54. 73.100
    libavformat    54. 37.100 / 54. 37.100
    libavdevice    54.  3.100 / 54.  3.100
    libavfilter     3. 23.101 /  3. 23.101
    libswscale      2.  1.102 /  2.  1.102
    libswresample   0. 17.100 /  0. 17.100
    libpostproc    52.  2.100 / 52.  2.100
    File formats:
    D. = Demuxing supported
    .E = Muxing supported
    --
    E 3g2             3GP2 (3GPP2 file format)
    E 3gp             3GP (3GPP file format)
    D  4xm             4X Technologies
    E a64             a64 - video for Commodore 64
    D aac             raw ADTS AAC (Advanced Audio Coding)
    DE ac3             raw AC-3
    D  act             ACT Voice file format
    D  adf             Artworx Data Format
    E adts            ADTS AAC (Advanced Audio Coding)
    DE adx             CRI ADX
    D  aea             MD STUDIO audio
    DE aiff            Audio IFF
    DE alaw            PCM A-law
    DE alsa            ALSA audio output
    DE amr             3GPP AMR
    D  anm             Deluxe Paint Animation
    D  apc             CRYO APC
    D  ape             Monkey's Audio
    DE asf             ASF (Advanced / Active Streaming Format)
    E asf_stream      ASF (Advanced / Active Streaming Format)
    DE ass             SSA (SubStation Alpha) subtitle
    D  ast             AST (Audio Stream)
    DE au              Sun AU
    DE avi             AVI (Audio Video Interleaved)
    E avm2            SWF (ShockWave Flash) (AVM2)
    D  avr             AVR (Audio Visual Resarch)
    D  avs             AVS
    D  bethsoftvid     Bethesda Softworks VID
    D  bfi             Brute Force & Ignorance
    D  bin             Binary text
    D  bink            Bink
    DE bit             G.729 BIT file format
    D  bmv             Discworld II BMV
    D  c93             Interplay C93
    DE caf             Apple CAF (Core Audio Format)
    DE cavsvideo       raw Chinese AVS (Audio Video Standard) video
    D  cdg             CD Graphics
    D  cdxl            Commodore CDXL video
    E crc             CRC testing
    DE daud            D-Cinema audio
    D  dfa             Chronomaster DFA
    DE dirac           raw Dirac
    DE dnxhd           raw DNxHD (SMPTE VC-3)
    D  dsicin          Delphine Software International CIN
    DE dts             raw DTS
    D  dtshd           raw DTS-HD
    DE dv              DV (Digital Video)
    D  dv1394          DV1394 A/V grab
    E dvd             MPEG-2 PS (DVD VOB)
    D  dxa             DXA
    D  ea              Electronic Arts Multimedia
    D  ea_cdata        Electronic Arts cdata
    DE eac3            raw E-AC-3
    DE f32be           PCM 32-bit floating-point big-endian
    DE f32le           PCM 32-bit floating-point little-endian
    E f4v             F4V Adobe Flash Video
    DE f64be           PCM 64-bit floating-point big-endian
    DE f64le           PCM 64-bit floating-point little-endian
    D  fbdev           Linux framebuffer
    DE ffm             FFM (FFserver live feed)
    DE ffmetadata      FFmpeg metadata in text
    D  film_cpk        Sega FILM / CPK
    DE filmstrip       Adobe Filmstrip
    DE flac            raw FLAC
    D  flic            FLI/FLC/FLX animation
    DE flv             FLV (Flash Video)
    E framecrc        framecrc testing
    E framemd5        Per-frame MD5 testing
    DE g722            raw G.722
    DE g723_1          raw G.723.1
    D  g729            G.729 raw format demuxer
    E gif             GIF Animation
    D  gsm             raw GSM
    DE gxf             GXF (General eXchange Format)
    DE h261            raw H.261
    DE h263            raw H.263
    DE h264            raw H.264 video
    E hls             hls
    D  hls,applehttp   Apple HTTP Live Streaming
    DE ico             Microsoft Windows ICO
    D  idcin           id Cinematic
    D  idf             iCE Draw File
    D  iff             IFF (Interchange File Format)
    DE ilbc            iLBC storage
    DE image2          image2 sequence
    DE image2pipe      piped image2 sequence
    D  ingenient       raw Ingenient MJPEG
    D  ipmovie         Interplay MVE
    E ipod            iPod H.264 MP4 (MPEG-4 Part 14)
    E ismv            ISMV/ISMA (Smooth Streaming)
    D iss             Funcom ISS
     D  iv8             IndigoVision 8000 video
    DE     ivf             On2 IVF
    DE jacosub         JACOsub subtitle format
    D  jv              Bitmap Brothers JV
    DE latm            LOAS/LATM
    D  lavfi           Libavfilter virtual input device
    D  lmlm4           raw lmlm4
    D  loas            LOAS AudioSyncStream
    D  lvf             LVF
     D  lxf             VR native stream (LXF)
    DE m4v             raw MPEG-4 video
    E matroska        Matroska
    D  matroska,webm   Matroska / WebM
    E md5             MD5 testing
    D  mgsts           Metal Gear Solid: The Twin Snakes
    DE microdvd        MicroDVD subtitle format
    DE mjpeg           raw MJPEG video
    E mkvtimestamp_v2 extract pts as timecode v2 format, as defined by mkvtoolnix
    DE mlp             raw MLP
    D  mm              American Laser Games MM
    DE mmf             Yamaha SMAF
    E mov             QuickTime / MOV
    D  mov,mp4,m4a,3gp,3g2,mj2 QuickTime / MOV
    E mp2             MP2 (MPEG audio layer 2)
    DE mp3             MP3 (MPEG audio layer 3)
    E mp4             MP4 (MPEG-4 Part 14)
    D  mpc             Musepack
    D  mpc8            Musepack SV8
    DE mpeg            MPEG-1 Systems / MPEG program stream
    E mpeg1video      raw MPEG-1 video
    E mpeg2video      raw MPEG-2 video
    DE mpegts          MPEG-TS (MPEG-2 Transport Stream)
    D  mpegtsraw       raw MPEG-TS (MPEG-2 Transport Stream)
    D  mpegvideo       raw MPEG video
    E mpjpeg          MIME multipart JPEG
    D  msnwctcp        MSN TCP Webcam stream
    D  mtv             MTV
    DE mulaw           PCM mu-law
    D  mvi             Motion Pixels MVI
    DE mxf             MXF (Material eXchange Format)
    E mxf_d10         MXF (Material eXchange Format) D-10 Mapping
    D  mxg             MxPEG clip
    D  nc              NC camera feed
    D  nsv             Nullsoft Streaming Video
    E null            raw null video
    DE nut             NUT
    D  nuv             NuppelVideo
    DE ogg             Ogg
    DE oma             Sony OpenMG audio
    DE oss             OSS (Open Sound System) playback
    D  paf             Amazing Studio Packed Animation File
    D  pmp             Playstation Portable PMP
    E psp             PSP MP4 (MPEG-4 Part 14)
    D  psxstr          Sony Playstation STR
    D  pva             TechnoTrend PVA
    D  qcp             QCP
    D  r3d             REDCODE R3D
    DE rawvideo        raw video
    E rcv             VC-1 test bitstream
    D  realtext        RealText subtitle format
    D  rl2             RL2
    DE rm              RealMedia
    DE roq             raw id RoQ
    D  rpl             RPL / ARMovie
    DE rso             Lego Mindstorms RSO
    DE rtp             RTP output
    DE rtsp            RTSP output
    DE s16be           PCM signed 16-bit big-endian
    DE s16le           PCM signed 16-bit little-endian
    DE s24be           PCM signed 24-bit big-endian
    DE s24le           PCM signed 24-bit little-endian
    DE s32be           PCM signed 32-bit big-endian
    DE s32le           PCM signed 32-bit little-endian
    DE s8              PCM signed 8-bit
    D  sami            SAMI subtitle format
    DE sap             SAP output
    D  sbg             SBaGen binaural beats script
    E sdl             SDL output device
    D  sdp             SDP
    E segment         segment
    D  shn             raw Shorten
    D  siff            Beam Software SIFF
    DE smjpeg          Loki SDL MJPEG
    D  smk             Smacker
    E smoothstreaming Smooth Streaming Muxer
    D  smush           LucasArts Smush
    D sol             Sierra SOL
    DE sox             SoX native
    DE spdif           IEC 61937 (used on S/PDIF - IEC958)
    DE srt             SubRip subtitle
    E stream_segment,ssegment streaming segment muxer
    D  subviewer       SubViewer subtitle format
    E svcd            MPEG-2 PS (SVCD)
    DE swf             SWF (ShockWave Flash)
    D  tak             raw TAK
    D  thp             THP
    D  tiertexseq      Tiertex Limited SEQ
    D  tmv             8088flex TMV
    DE truehd          raw TrueHD
    D  tta             TTA (True Audio)
    D  tty             Tele-typewriter
    D  txd             Renderware TeXture Dictionary
    DE u16be           PCM unsigned 16-bit big-endian
    DE u16le           PCM unsigned 16-bit little-endian
    DE u24be           PCM unsigned 24-bit big-endian
    DE u24le           PCM unsigned 24-bit little-endian
    DE u32be           PCM unsigned 32-bit big-endian
    DE u32le           PCM unsigned 32-bit little-endian
     DE u8              PCM unsigned 8-bit
    D  vc1             raw VC-1
    D  vc1test         VC-1 test bitstream
    E vcd             MPEG-1 Systems / MPEG program stream (VCD)
    D  video4linux2,v4l2 Video4Linux2 device grab
    D  vmd             Sierra VMD
    E vob             MPEG-2 PS (VOB)
    DE voc             Creative Voice
    D  vqf             Nippon Telegraph and Telephone Corporation (NTT) TwinVQ
    D  w64             Sony Wave64
    DE wav             WAV / WAVE (Waveform Audio)
    D  wc3movie        Wing Commander III movie
     E webm            WebM
    D  webvtt          WebVTT subtitle
    D  wsaud           Westwood Studios audio
    D  wsvqa           Westwood Studios VQA
    DE wtv             Windows Television (WTV)
    DE wv              WavPack
    D  x11grab         X11grab
    D  xa              Maxis XA
    D  xbin            eXtended BINary text (XBIN)
    D  xmv             Microsoft XMV
    D xwma            Microsoft xWMA
    D  yop             Psygnosis YOP
    DE yuv4mpegpipe    YUV4MPEG pipe
