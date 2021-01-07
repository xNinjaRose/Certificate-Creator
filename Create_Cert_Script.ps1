
# Create the personal code signing certificate
certreq -new ./request.inf nothing.csr

#prompt for the domain name to get the certificate from Get-ChildItem
$domain_name = Read-Host -Prompt "What domain name did you put into request.inf? "

#prompt for the password to protect the pfx file
$password = Read-Host -Prompt "Please type a strong password for your pfx file (REMEMBER THIS!) " | ConvertTo-SecureString -AsPlainText -Force

#prompt for the name to make the pfx file created
$pfx_name = Read-Host -Prompt "Name your PFX file you will be creating "

# Create variable to fetch the certificate from the store
$certificate = Get-ChildItem -Path Cert:\CurrentUser\My\ | Where-Object {$_.Subject -match $domain_name}

#Export made certificate into a PFX file to use for Code signing
Export-PfxCertificate -Cert $Certificate -FilePath ($pfx_name + ".pfx") -Password $password 
