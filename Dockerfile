# Sử dụng Tomcat 9 với Java 11
FROM tomcat:9.0-jdk11-openjdk

# Xóa các ứng dụng mặc định của Tomcat cho nhẹ (tùy chọn)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war của bạn vào thư mục webapps của Tomcat
# LƯU Ý: Sửa 'my-webapp.war' thành tên file .war thực tế của bạn
COPY ./dist/EmailListWebApp.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]