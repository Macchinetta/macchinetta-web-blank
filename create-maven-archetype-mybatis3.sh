#!/bin/sh
MODE="MyBatis3"
KEYWORD="REMOVE THIS LINE IF YOU USE MyBatis3"
TARGET="src pom.xml"
DIRNAME=`echo $MODE | tr "[:upper:]" "[:lower:]"`

rm -rf ./tmp
mkdir -p tmp/src/main/resources
cp -r infra/$DIRNAME/* tmp/src/main/resources/
cp -r infra/common/* tmp/src/main/resources/
rm -rf `/bin/find tmp -name '.svn' -type d `

cp -rn src pom.xml create-maven-archetype.sh tmp/
pushd tmp

sed -i -e "/$KEYWORD/d" `grep -rIl "$MODE" $TARGET | grep -v '.svn'`

sed -i -e "s/macchinetta-web-blank-noorm/macchinetta-web-blank/g" pom.xml
sed -i -e "s/macchinetta-web-blank-noorm/macchinetta-web-blank/g" create-maven-archetype.sh
sed -i -e "s|Web Blank Project (No O/R Mapper)|Web Blank Project|g" pom.xml
mv ./create-maven-archetype.sh ../create-maven-archetype-tmp.sh
popd

sh create-maven-archetype-tmp.sh "$1"

rm create-maven-archetype-tmp.sh
