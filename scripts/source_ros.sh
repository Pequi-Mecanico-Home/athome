GATEWAY_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.Gateway}}{{end}}' ros_master)
ROS_MASTER_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ros_master)

export ROS_MASTER_URI=http://$ROS_MASTER_IP:11311
export ROS_IP=$GATEWAY_IP