# Certificate-Creator
Creates a Certificate and exports it to a PFX file

1 -- Open the "requests.inf" file and put in your domain name (test.xyz , local.home, etc.) after the CN: where it says INSERT DOMAIN HERE

2 -- open Powershell as an Administrator

3 -- type "./Create_Cert_Scripts.ps1"

4 -- Certificate will be created 

5 -- Type in the domain you typed in the requests.inf file when prompted

6 -- Type in a really strong password to protect the PFX file to be made

7 -- Type in the name for your PFX file. (There is NO need to place extensions, the program will automatically put .pfx at the end)

8 -- PFX will be saved to the same location this script is stored in

Use this PFX file to sign code and sign executables (FUTURE CODE COMING TO SIGN USING THE MADE PFX
