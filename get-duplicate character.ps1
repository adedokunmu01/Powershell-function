$foo = Read-Host -prompt 'Enter the word'

function get-dupchar {
    [CmdletBinding()]
    param (
      [string]$foo
    )

    $h = [System.Collections.Generic.HashSet[char]]::new()

    foreach ($ch in $foo.ToCharArray()) {
        if(!$h.add($ch)) { return $ch }
    }
}
get-dupchar("$foo")
