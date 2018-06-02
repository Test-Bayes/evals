<!--
  ~ Copyright 2017-present Open Networking Foundation
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>org.sonatype.oss</groupId>
    <artifactId>oss-parent</artifactId>
    <version>7</version>
  </parent>

  <groupId>io.atomix</groupId>
  <artifactId>atomix-parent</artifactId>
  <version>2.1.0-SNAPSHOT</version>
  <packaging>pom</packaging>
  <name>Atomix Parent Pom</name>
  <description>Distributed systems framework.</description>
  <url>http://github.com/atomix/atomix</url>
  <inceptionYear>2013</inceptionYear>

  <repositories>
    <repository>
      <id>ProjectRepo</id>
      <name>ProjectRepo</name>
      <url>file://${project.basedir}/mylibs</url>
    </repository>
  </repositories>

  <properties>
    <jv>${project.version}</jv>

    <!-- Java -->
    <java.version>1.8</java.version>

    <!-- Logging -->
    <slf4j.version>1.7.7</slf4j.version>

    <!-- Testing -->
    <junit.version>4.12</junit.version>
    <hamcrest.version>1.3</hamcrest.version>
    <mockito.version>1.10.19</mockito.version>
    <concurrentunit.version>0.4.2</concurrentunit.version>
    <logback.version>1.1.2</logback.version>

    <!-- Core dependencies -->
    <guava.version>22.0</guava.version>
    <kryo.version>4.0.2</kryo.version>
    <commons.lang3.version>3.7</commons.lang3.version>
    <commons.math3.version>3.6.1</commons.math3.version>
    <netty.version>4.1.24.Final</netty.version>
    <vertx.version>3.5.0</vertx.version>
    <jaxrs.version>2.0</jaxrs.version>
    <jackson.version>2.9.5</jackson.version>
    <config.version>1.3.2</config.version>
    <resteasy.version>3.1.4.Final</resteasy.version>
    <rest-assured.version>3.0.7</rest-assured.version>
    <argparse4j.version>0.7.0</argparse4j.version>

    <!-- Maven plugins -->
    <maven.source.plugin.version>2.2.1</maven.source.plugin.version>
    <maven.compiler.plugin.version>3.0</maven.compiler.plugin.version>
    <maven.failsafe.plugin.version>2.14</maven.failsafe.plugin.version>
    <maven.surefire.plugin.version>2.14</maven.surefire.plugin.version>
    <maven.clean.plugin.version>2.5</maven.clean.plugin.version>
    <maven.resources.plugin.version>2.6</maven.resources.plugin.version>
    <maven.dependency.plugin.version>2.7</maven.dependency.plugin.version>
    <maven.assembly.plugin.version>2.4</maven.assembly.plugin.version>
    <maven.javadoc.plugin.version>2.10.1</maven.javadoc.plugin.version>
    <maven.bundle.plugin.version>2.5.3</maven.bundle.plugin.version>
    <maven.checkstyle.plugin.version>2.17</maven.checkstyle.plugin.version>
  </properties>

  <licenses>
    <license>
      <name>Apache License, Version 2.0</name>
      <url>http://apache.org/licenses/LICENSE-2.0</url>
      <distribution>repo</distribution>
    </license>
  </licenses>

  <developers>
    <developer>
      <name>Jordan Halterman</name>
      <url>https://www.github.com/kuujo</url>
    </developer>
  </developers>

  <scm>
    <connection>scm:git:git@github.com:atomix/atomix.git</connection>
    <developerConnection>scm:git:git@github.com:atomix/atomix.git</developerConnection>
    <url>git@github.com:atomix/atomix.git</url>
  </scm>

  <issueManagement>
    <system>GitHub</system>
    <url>http://github.com/atomix/atomix/issues</url>
  </issueManagement>

  <modules>
    <module>agent</module>
    <module>cluster</module>
    <module>core</module>
    <module>primitive</module>
    <module>protocols</module>
    <module>rest</module>
    <module>storage</module>
    <module>tests</module>
    <module>utils</module>
  </modules>

  <dependencyManagement>
    <dependencies>
      <dependency>
        <groupId>io.netty</groupId>
        <artifactId>netty-bom</artifactId>
        <version>${netty.version}</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>
      <dependency>
        <groupId>com.fasterxml.jackson</groupId>
        <artifactId>jackson-bom</artifactId>
        <version>${jackson.version}</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>
    </dependencies>
  </dependencyManagement>

  <dependencies>
    <dependency>
      <groupId>edu.uw.cse.testbayes</groupId>
      <artifactId>testbayes</artifactId>
      <version>1.0</version>
    </dependency>
    <dependency>
      <groupId>org.slf4j</groupId>
      <artifactId>slf4j-api</artifactId>
      <version>${slf4j.version}</version>
    </dependency>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>${junit.version}</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>org.hamcrest</groupId>
      <artifactId>hamcrest-all</artifactId>
      <version>${hamcrest.version}</version>
    </dependency>
    <dependency>
      <groupId>com.google.guava</groupId>
      <artifactId>guava-testlib</artifactId>
      <version>${guava.version}</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>net.jodah</groupId>
      <artifactId>concurrentunit</artifactId>
      <version>${concurrentunit.version}</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>org.mockito</groupId>
      <artifactId>mockito-core</artifactId>
      <version>${mockito.version}</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>ch.qos.logback</groupId>
      <artifactId>logback-classic</artifactId>
      <version>${logback.version}</version>
      <scope>test</scope>
    </dependency>
  </dependencies>

  <build>
    <plugins>

      <plugin>
        <artifactId>maven-dependency-plugin</artifactId>
        <executions>
          <execution>
            <phase>compile</phase>
            <goals>
              <goal>copy-dependencies</goal>
            </goals>
            <configuration>
              <outputDirectory>${project.build.directory}/mylib</outputDirectory>
            </configuration>
          </execution>
        </executions>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>${maven.surefire.plugin.version}</version>
        <configuration>
          <argLine>-Xms4G -Xmx4G -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode</argLine>
        </configuration>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-source-plugin</artifactId>
        <version>${maven.source.plugin.version}</version>
        <executions>
          <execution>
            <id>attach-sources</id>
            <phase>verify</phase>
            <goals>
              <goal>jar-no-fork</goal>
            </goals>
          </execution>
        </executions>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>${maven.compiler.plugin.version}</version>
        <configuration>
          <source>${java.version}</source>
          <target>${java.version}</target>
        </configuration>
      </plugin>

      <plugin>
        <groupId>org.apache.felix</groupId>
        <artifactId>maven-bundle-plugin</artifactId>
        <version>${maven.bundle.plugin.version}</version>
        <extensions>true</extensions>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-javadoc-plugin</artifactId>
        <version>${maven.javadoc.plugin.version}</version>
        <executions>
          <execution>
            <id>attach-javadocs</id>
            <goals>
              <goal>jar</goal>
            </goals>
          </execution>
        </executions>
        <configuration>
          <show>public</show>
          <doctitle>Atomix API Reference (${jv})</doctitle>
          <windowtitle>Atomix API Reference (${jv})</windowtitle>
          <aggregate>true</aggregate>
          <stylesheetfile>${basedir}/docs/style.css</stylesheetfile>
          <excludePackageNames>*.impl*:io.atomix.core.config.jackson:io.atomix.core.utils:io.atomix.rest*:io.atomix.agent*:io.atomix.storage.buffer:io.atomix.storage.journal*:io.atomix.storage.statistics:io.atomix.protocols.raft.utils:io.atomix.utils.serializer.serializers:io.atomix.utils.concurrent:io.atomix.utils.logging:io.atomix.utils.misc:io.atomix.utils.memory:io.atomix.protocols.raft.roles:io.atomix.protocols.raft.protocol:io.atomix.protocols.raft.storage:io.atomix.protocols.raft.cluster:io.atomix.protocols.raft.test:io.atomix.protocols.backup.roles:io.atomix.protocols.backup.protocol
          </excludePackageNames>
          <additionalparam>
            -Xdoclint:none
            -notimestamp
            -link http://docs.oracle.com/javase/8/docs/api/
            -group "Core" io.atomix.core*
            -group "Primitives" io.atomix.core.counter:io.atomix.core.election:io.atomix.core.generator:io.atomix.core.lock:io.atomix.core.map:io.atomix.core.multimap:io.atomix.core.queue:io.atomix.core.set:io.atomix.core.transaction:io.atomix.core.tree:io.atomix.core.value
            -group "Cluster Management" io.atomix.cluster*:io.atomix.messaging*:io.atomix.cluster.messaging*
            -group "Primitive API" io.atomix.primitive*
            -group "Raft Protocol" io.atomix.protocols.raft*
            -group "Primary-Backup Protocol" io.atomix.protocols.backup*
            -group "Storage" io.atomix.storage*
            -group "Utilities" io.atomix.utils*
          </additionalparam>
        </configuration>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-release-plugin</artifactId>
        <version>2.1</version><!--$NO-MVN-MAN-VER$ -->
        <configuration>
          <allowTimestampedSnapshots>true</allowTimestampedSnapshots>
        </configuration>
      </plugin>

      <!-- Coding standards -->
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-checkstyle-plugin</artifactId>
        <version>2.17</version>
        <configuration>
          <configLocation>google_checks.xml</configLocation>
        </configuration>
      </plugin>

      <!-- Coverage -->
      <plugin>
        <groupId>org.eluder.coveralls</groupId>
        <artifactId>coveralls-maven-plugin</artifactId>
        <version>4.3.0</version>
      </plugin>
      <plugin>
        <groupId>org.jacoco</groupId>
        <artifactId>jacoco-maven-plugin</artifactId>
        <version>0.8.1</version>
        <executions>
          <execution>
            <id>prepare-agent</id>
            <goals>
              <goal>prepare-agent</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
</project>
