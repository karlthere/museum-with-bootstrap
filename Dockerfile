# Gunakan image Nginx resmi dari Docker Hub
FROM nginx:latest

# Set working directory di dalam container
WORKDIR /usr/share/nginx/html*

# Hapus file default di direktori Nginx
RUN rm -rf ./*

# Salin semua file dari folder lokal ke direktori kerja di container
COPY . /usr/share/nginx/html

# Port yang akan digunakan untuk aplikasi
EXPOSE 80

# Perintah default untuk menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
