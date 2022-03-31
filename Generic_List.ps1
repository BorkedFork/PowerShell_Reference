$var = New-Object -TypeName System.Collections.Generic.List[object]

foreach($item in (Get-ChildItem)){$var.Add($item)}
 

#Sort Ascending
$files.Sort({$args[0].name.compareto($args[1].name)})
$files | Select-Object name
 
#Sort Descending
$files.Sort({$args[1].name.compareto($args[0].name)})
$files | Select-Object name
