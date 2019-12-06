# Tomcat

## Tomcat Components
   - **Catalina**:  Servlet container. Manages life cycle of JSP and servlets.
   - **Jasper**: Does the JSP to server conversion.
   - **Coyote** : HTTP connector. Listens to TCP/IP port and transmits the request to container. Also transmits the request back to user. Plays important role in integrating with other web servers.
   - **Cluster**: Plays important role while tomcat is running in cluster.
