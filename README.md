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
   - logs: contains all the logs related to tomcat like catalina.out, locahost access.
   - webapps: the location where wars are deployed.
   - work: The jsp to Java(servlet) translated class resides here.
   
## Tomcat SSL certificate
   - https://www.mulesoft.com/tcat/tomcat-ssl
   - We can generate SSL certificate using keytool provided in JRE bin.
   - Command: keytool -genkey -keyalg  RSA -alias esh1 -keystore f:/sslkey/esh1.jks
   
   
## Tomcat virtual host
   - https://www.ramkitech.com/2012/02/understanding-virtual-host-concept-in.html
   
## Tomcat realm
   - A Realm is a "database" of usernames and passwords that identify valid users of a web application (or set of web applications), plus an enumeration of the list of roles associated with each valid user. 
   - https://javapipe.com/blog/tomcat-realm/
   - Java security manager provides various permissions.For eg: java.io.FilePermission - Controls read/write/execute access to files and directories. Specify similar permissions in tomcat using /conf/catalina.policy.
   // These permissions apply to all shared system extensions when
// ${java.home} points at $JAVA_HOME/jre
grant codeBase "file:${java.home}/lib/ext/-" {
        permission java.security.AllPermission;
};
   
   
   
