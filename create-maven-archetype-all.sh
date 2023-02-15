#!/bin/sh

DEPLOY=$1
REPOSITORY=$2

sh create-maven-archetype-xmlconfig-jsp-mybatis3.sh "$DEPLOY" "$REPOSITORY"
sh create-maven-archetype-xmlconfig-jsp-noorm.sh "$DEPLOY" "$REPOSITORY"
sh create-maven-archetype-xmlconfig-thymeleaf-mybatis3.sh "$DEPLOY" "$REPOSITORY"
sh create-maven-archetype-xmlconfig-thymeleaf-noorm.sh "$DEPLOY" "$REPOSITORY"
