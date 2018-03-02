FROM cogniteev/oracle-java


# Define commonly used JAVA_HOME variable
# ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

COPY . /home
#RUN chmod +x /opt/vocbench-backup/bin/st_server_run
#USER sksuser
CMD ["sh /home/bin/st_server_run"]