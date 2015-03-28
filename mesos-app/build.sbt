name := "ScalaMesos"
 
version := "1.0"
 
scalaVersion := "2.11.4"
 
resolvers += "Mesosphere Repo" at "http://downloads.mesosphere.io/maven"
 
libraryDependencies ++= Seq(
  "org.apache.mesos" % "mesos" % "0.21.0",
  "mesosphere" %% "mesos-utils" % "0.21.0-1"
)