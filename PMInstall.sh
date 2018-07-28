#!/bin/bash

TAG="\x1b[38;5;87m[Installer] \x1b[38;5;231m";

echo -e "$TAG" "포켓마인 설치를 시작합니다.";
echo -e "$TAG" "필수 패키지 설치 중";
apt-get install git wget tar unzip screen -y;
echo -e "$TAG" "필수 요소 다운로드 중 (1/3)";

wget https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar;

echo -e "$TAG" "필수 요소 다운로드 중 (2/3)";

wget https://jenkins.pmmp.io/job/PHP-7.2-Linux-x86_64/lastSuccessfulBuild/artifact/PHP_Linux-x86_64.tar.gz;

echo -e "$TAG" "필수 요소 다운로드 중 (3/3)";

wget https://raw.githubusercontent.com/pmmp/PocketMine-MP/master/start.sh;

echo -e "$TAG" "파일 압축 해제 중";
tar -xzvf PHP_Linux-x86_64.tar.gz;
chmod 755 start.sh;

echo -e "$TAG" "PocketMine-MP 최신 버전 설치가 완료되었습니다.";
echo -e "$TAG" "./start.sh 를 입력하면 서버가 시작됩니다.";