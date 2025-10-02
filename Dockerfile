FROM tomcat:11.0.10

# Xóa các app mặc định của Tomcat (tùy chọn)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps của Tomcat với tên ROOT.war
COPY ex12_2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]