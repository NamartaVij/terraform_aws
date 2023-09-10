resource "aws_launch_template" "mylaunchtemplate" {
  name_prefix   = "mylaunchtemplate"
  image_id      = "ami-024e6efaf93d85776"
  instance_type = "t2.small"
}

resource "aws_autoscaling_group" "autoscalingroup" {
 vpc_zone_identifier = [aws_subnet.zoneAPublicSubnet.id,aws_subnet.zoneBPublicSubnet.id]
  desired_capacity   = 2
  max_size           = 10
  min_size           = 1

  launch_template {
    id      = aws_launch_template.mylaunchtemplate.id
    version = "$Latest"
  }
}