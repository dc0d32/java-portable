#Requires -Version 2.0

<#
    .SYNOPSIS
        Definitions for a portable java development environment
    .NOTES
        To update a package, update its name and its URL, then delete all folders and run Setup.
 #>

#
# Oracle JDK archive
# See https://www.whitebyte.info/programming/java/how-to-install-a-portable-jdk-in-windows-without-admin-rights
# 
$OracleJDK = 'jdk-8u191-windows-x64'
$OracleJDKInstaller = "$OracleJDK.exe"
$OracleJDKURL ="https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/$OracleJDKInstaller"
# jre-8u191-windows-x64.exe?GroupName=JSC&FilePath=/ESD6/JSCDL/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jre-8u191-windows-x64.exe&BHost=javadl.sun.com&File=jre-8u191-windows-x64.exe&AuthParam=1544204185_8190cd2db5ca1fbb0709e68c4375696e&ext=.exe/
#https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-windows-x64.exe?AuthParam=1544208798_3dc3a3da45f0a100422aa168fd37b23e
$OracleJDKInternalCABPath = '.rsrc\1033\JAVA_CAB10'
$OracleJDKInternalCAB = '111'
$OracleJDKInternalArchive ='tools.zip'
$OracleJDKDirectory =".\$OracleJDK"
$OracleJDKBinariesDirectory ="$OracleJDKDirectory\bin"

#
# LessMSI to unpack 7zip portable
# 
$LessMSI = 'lessmsi-v1.6.3'
$LessMSIArchive = "$LessMSI.zip"
$LessMSIURL = 'https://github.com/activescott/lessmsi/releases/download/v1.6.3/' + $LessMSIArchive
$LessMSIDirectory = ".\$LessMSI"
$LessMSIExecutable ='lessmsi.exe'

#
# 7zip portable to extract and setup jdk archive
#
$7z = '7z1805-x64'
$7zInstaller = "$7z.msi"
$7zURL = "http://d.7-zip.org/a/$7zInstaller"
$7zDirectory = ".\$7z\SourceDir\Files\7-Zip"
$7zExecutable = '7z.exe'
