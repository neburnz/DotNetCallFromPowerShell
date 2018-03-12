# Load the base path from script location.
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition

# Build the assembly path.
$assemblyPath = $scriptPath + '\DotNetClassLibrary.dll'

# Loading the assembly.
[Reflection.Assembly]::LoadFile($assemblyPath)

# Creating a new class instance.
$instance = New-Object DotNetClassLibrary.DotNetClass

# Executing a simple insance method.
$date = $instance.CallMethodWithoutArguments()
Write-Output $date

# Executing a class method.
$name = [DotNetClassLibrary.DotNetClass]::CallStaticMethod("neburnz",36)
Write-Output $name