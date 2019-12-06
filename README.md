# Tomcat

## Tomcat Components
   - **Catalina**:  Servlet container. Manages life cycle of JSP and servlets.
   - **Jasper**: Does the JSP to server conversion.
   - **Coyote** : HTTP/SSL connector. Listens to TCP/IP port and transmits the request to container. Also transmits the request back to user. Plays important role in integrating with other web servers.
   - **Cluster**: Plays important role while tomcat is running in cluster.
   
## Tomcat manager 
   - Tomcat manager is kind of admin. Through manager gui we can manage applications deployed.
   - Example: For accessing manager-gui we need to add the role in tomcat-users.xml: https://github.com/eshita19/mtomcat/tree/master/manager.
   
## Tomcat folder structure
   - bin: comtains startup and shutdown scripts.
   - conf: Configuration files like users roles.
   - lib: Libraries which tomcat loads in classpath. Includes servlet-api.jar. The jars will be available/shared among all apllications deployed in tomcat.
