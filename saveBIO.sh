#!/bin/bash

read -p "Simpan biodata ke file? (y/n): " simpan

if [[ "$simpan" == "y" ]]; then
  tanggal=$(date +%Y%m%d_%H%M%S) # Membuat timestamp
  nama_file="biodata_${nama// /_}_${tanggal}.txt" # Membuat nama file unik
  echo "Nama Lengkap      : $nama" >> "$nama_file"
  echo "Tempat/Tgl Lahir : $ttl" >> "$nama_file"
  echo "Alamat            : $alamat" >> "$nama_file"
  echo "Nomor Telepon     : $no_telp" >> "$nama_file"
  echo "Email             : $email" >> "$nama_file"
  echo "Pendidikan        : $pendidikan" >> "$nama_file"
  hijau "Biodata berhasil disimpan ke file: $nama_file"
elif [[ "$simpan" != "n" ]]; then
  merah "Input tidak valid. Biodata tidak disimpan."
fi

kuning "===================================="
