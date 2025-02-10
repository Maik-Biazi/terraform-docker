resource "aws_elastic_beanstalk_application" "aplicacao_beanstalk" {
  name = var.nome
  description = var.descricao
}

resource "aws_elastic_beanstalk_environment" "ambiente_beanstalk" {
    name = var.ambiente
    application = aws_elastic_beanstalk_application.aplicacao_beanstalk.name
  setting {
    namespace = "aws:autoscaling:lauchconfiguration"
    name = "InstanceType"
    value = var.maquina
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name = "MaxSize"
    value = var.max
  }
  setting {
    namespace = "aws:autoscaling:lauchconfiguration"
    name = "IamIntanceProfile"
    value = aws_iam_instance_profile.beanstalk_ec2_profile.name
  }
}