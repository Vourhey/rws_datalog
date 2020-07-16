#!/usr/bin/env python3
import rospy
import roslib
from std_msgs.msg import Empty

def talker():
    rospy.init_node('talker', anonymous=True)
    pub = rospy.Publisher("/photo", Empty, queue_size=10)
    rate = rospy.Rate(0.1)
    while not rospy.is_shutdown():
        rospy.loginfo("Sending...")
        pub.publish(Empty())
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass

