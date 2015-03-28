/**
 * Credits go to https://github.com/phatak-dev/mesos-helloworld-scala
 */

package demo

import org.apache.mesos.MesosSchedulerDriver
import org.apache.mesos.Protos.FrameworkInfo

object DistributedShell {

  def main(args: Array[String]) {

    val framework = FrameworkInfo.newBuilder.
    setName("DistributedShell").
    setUser("").
    setRole("*").
    setCheckpoint(false).
    setFailoverTimeout(0.0d).
    build()

    //create instance of schedule and connect to mesos
    val scheduler = new ScalaScheduler
    //submit shell commands
    scheduler.submitTasks(args:_*)
    val mesosURL = "docker81.rnd.unicredit.eu:5050"
    val driver = new MesosSchedulerDriver(scheduler,framework,mesosURL)
    //run the driver
    driver.run()
  }
}