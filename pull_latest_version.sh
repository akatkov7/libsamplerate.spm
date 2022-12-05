#! /usr/bin/env bash

# TODO: auto pull latest release

# copy files into format that SPM can work with
mkdir src
rm -rf src/*
cp libsamplerate/src/* src
mkdir -p src/include
cp libsamplerate/include/* src/include

# TODO: copy version data into Package.swift
