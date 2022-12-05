#! /usr/bin/env bash

# TODO: auto pull latest release

# copy files into format that SPM can work with
mkdir -p Sources/Clibsamplerate
rm -rf Sources/Clibsamplerate/*
cp libsamplerate/src/* Sources/Clibsamplerate
mkdir -p Sources/Clibsamplerate/include
cp libsamplerate/include/* Sources/Clibsamplerate/include

# TODO: copy version data into Package.swift
