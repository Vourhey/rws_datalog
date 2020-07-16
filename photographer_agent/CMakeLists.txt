cmake_minimum_required(VERSION 2.8.3)
project(photographer_agent)

find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  rws_msgs
)

catkin_package()

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
install(
    FILES
        launch/agent.launch
    DESTINATION
        ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)

catkin_install_python(
	PROGRAMS
	    scripts/photographer_node
	DESTINATION
	    ${CATKIN_PACKAGE_BIN_DESTINATION}
)
