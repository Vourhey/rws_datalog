cmake_minimum_required(VERSION 2.8.3)
project(rws_datalog)

find_package(catkin REQUIRED COMPONENTS
  rospy
  rws_msgs
)

#catkin_python_setup()

catkin_package()

catkin_install_python(
    PROGRAMS
        scripts/rws_node
    DESTINATION
        ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
    FILES
        launch/agent.launch
    DESTINATION
        ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)

install(
    FILES
        config/default.yaml
    DESTINATION
        ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
)

