function CheckOnline 
{
    $DATE = Get-Date -UFormat "%H-%M-%S-%m-%d-%Y"
    $check = TNC ya.ru -InformationLevel Quiet
    if ($check -eq $True)
        {sleep 1
        continue}
    Else 
        {$DATE | Out-File D:\CheckOnline.txt -Append}
}
$i = 1
for (;;$i++)
{
    CheckOnline
}