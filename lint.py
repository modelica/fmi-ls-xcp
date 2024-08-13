# validate the XML examples against the XSD schema

from lxml import etree
from pathlib import Path
import urllib.request


repo_root = Path(__file__).parent

fmi_ls_schema_url = 'https://raw.githubusercontent.com/modelica/fmi-standard/v3.0.1/schema/fmi3LayeredStandardManifest.xsd'

# download the FMI Layered Standard Manifest schema
urllib.request.urlretrieve(fmi_ls_schema_url, repo_root / 'schema' / 'fmi3LayeredStandardManifest.xsd')

xcp_schema_file = repo_root / 'schema' / 'fmi3LayeredStandardXcpManifest.xsd'

with open(xcp_schema_file) as f:
    s = f.read()

# use a local path for the referenced FMI LS schema, so we can load it with lxml
s = s.replace(
    'https://raw.githubusercontent.com/modelica/fmi-standard/v3.0.1/schema/fmi3LayeredStandardManifest.xsd',
    'fmi3LayeredStandardManifest.xsd'
)

with open(xcp_schema_file, 'w') as f:
    f.write(s)

xcp_schema = etree.XMLSchema(file=xcp_schema_file)

for filename in (repo_root / 'docs' / 'examples').glob('*.xml'):
    print(f"Validating {filename}")
    tree = etree.parse(repo_root / 'docs' / 'examples' / 'fmi_ls_xcp_manifest_example.xml')
    assert xcp_schema.validate(tree.getroot())
