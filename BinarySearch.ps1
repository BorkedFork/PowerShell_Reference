function BinarySearch
{
    param ($YourOrderedArray, $ItemSearched,$fieldSearched)
    [int] $LowIndex = 0
    [int] $HighIndex = $YourOrderedArray.count - 1
    while ($LowIndex -le $HighIndex)
    {
        [int]$MiddlePoint = ($LowIndex + $HighIndex) / 2
        $InspectedValue = $YourOrderedArray[$MiddlePoint].$fieldSearched
        if ($InspectedValue -lt $ItemSearched) { $LowIndex = $MiddlePoint + 1 }
        elseif ($InspectedValue -gt $ItemSearched) { $HighIndex = $MiddlePoint - 1 }
        else{ return $MiddlePoint }
    }
    return (-1)
}
