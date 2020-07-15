cmake_minimum_required(VERSION 2.8.3)
project(rws_msgs)

find_package(catkin REQUIRED COMPONENTS
  rospy
  message_generation
)

#catkin_python_setup()

add_message_files(
    FILES
		Entry.msg
)

generate_messages()

catkin_package()

