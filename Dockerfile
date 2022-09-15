FROM arm64v8/nginx
COPY app1/* /usr/share/nginx/html/
RUN echo "<h2>$(echo "$(date +%s%N)" |md5sum |cut -d " " -f 1)</h2>" >> /usr/share/nginx/html/teste.html