#==============================================================================#
# IAM/test/runtests.jl
#
# Copyright OC Technology Pty Ltd 2014 - All rights reserved
#==============================================================================#


using AWSIAM
using Base.Test

AWSCore.set_debug_level(1)


#-------------------------------------------------------------------------------
# Load credentials...
#-------------------------------------------------------------------------------

aws = AWSCore.aws_config(region="ap-southeast-2")



#-------------------------------------------------------------------------------
# IAM tests
#-------------------------------------------------------------------------------

@test ismatch(r"^arn:aws:iam::[0-9]+:[^:]+$", iam_whoami(aws))



#==============================================================================#
# End of file.
#==============================================================================#
