param([switch] $verbose)

$pngOutDir = Resolve-Path (Join-Path $PSScriptRoot "\docs\images\schema")
$generatorDir = Join-Path $PSScriptRoot "xsddiagram"
$generator = Join-Path $generatorDir "XSDDiagramConsole.exe"

function Clear-Gen() {
	# Get-ChildItem $pngOutDir\*
	if (Test-Path $generatorDir){
		Remove-Item -Recurse $generatorDir
	}
	Remove-Item $pngOutDir\*
}

function Get-XSDDiagram() {
	if (-Not (Test-Path $generator))
	{
		$uri = "https://github.com/clagms/xsddiagram/releases/download/XSDDiagram_1.3_FMI/XSDDiagram_1.3_FMI.zip"
		$zipFile = "XSDDiagram-Binary.zip"
		Invoke-WebRequest -Uri $uri -OutFile $zipFile
		Expand-Archive -Path $zipFile -DestinationPath $generatorDir -Force
		Remove-Item -Path $zipFile
	}
}

function Check-Existing() {
	Param(
		$file
	)
	If (Test-Path $file -PathType Leaf) {
		Write-Output "Error: File already exists."
		Exit 1
	}
}

function Export-Schema() {
	Param(
		$element,
		$expand,
		$schema = "fmi3ModelDescription.xsd",
		$outName = $element + ".png",
		[switch] $preview = $false
	)
	Write-Output "Generating schema for $element..."
	$out = Join-Path $pngOutDir $outName
	Check-Existing $out

	$schema = (Resolve-Path (Join-Path $PSScriptRoot "\schema\$schema"))
	if ($verbose) {
		Write-Output "Generator command parameters:"
		Write-Output "  exe: $generator"
		Write-Output "  out: $out"
		Write-Output "  element: $element"
		Write-Output "  expand: $expand"
		Write-Output "  schema: $schema"
	}

	& $generator -o $out -r $element -e $expand -d -c -z 300 -a -no-gui -y $schema

	If ((Get-Item $out).length -eq 0kb) {
		Write-Output "Error generating file $out"
		exit 1
	}

	if ($preview) {
		Start-Process $out
	}
}

Clear-Gen
Get-XSDDiagram

Export-Schema fmi-ls-xcp 3 -schema fmi-ls-xcp.manifest

