Param(
	[parameter(Mandatory=$true)][String]$Author,
	[parameter()][String]$File = $env:APPDATA + '\..\LocalLow\Hyperbolic Magnetism\Beat Saber\PlayerData.dat'
)

$title="favorites"
$image = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAIAAAD2HxkiAAAAAXNSR0IArs4c6QAAAARnQU1BAACxj' `
	+ 'wv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAMrSURBVHhe7dMxAQAADMOg+TfdycgDHrgBKQkhJiHEJISYhBCTEGISQkxCiEkI' `
	+ 'MQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBC' `
	+ 'TEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQ' `
	+ 'khJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTE' `
	+ 'GISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkh' `
	+ 'JiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGI' `
	+ 'SQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJi' `
	+ 'HEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQ' `
	+ 'kxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHE' `
	+ 'JISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkx' `
	+ 'CiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJISYhBCTEGISQkxCiEkIMQkhJiHEJI' `
	+ 'SYhBCTEGISQkxCiEkIMQkhJiHEJITU9vSZzteUMFOrAAAAAElFTkSuQmCC'

$playlistData = New-Object PSObject -Property @{playlistTitle=$title; playlistAuthor=$Author; playlistDescription=''; image=$image; songs=@()}

Get-Content -Path $File -Encoding UTF8 -Raw | ConvertFrom-Json | ForEach-Object {
	$favorites = $_.localPlayers.favoritesLevelIds
	$favorites | ForEach-Object {
		$hash = $_;

		if ($hash.StartsWith("custom_level_")) {
			$hash = $hash.Substring(13)
			# Write-Host $hash
			$playlistData.songs += New-Object PSObject -Property @{hash=$hash}
		}
	}
}

# Write-Host $playlistData
$playlistData | ConvertTo-Json | Out-String `
	| % { [Text.Encoding]::UTF8.GetBytes($_) } `
	| Set-Content -Path 'myfavorites.json' -Encoding Byte
