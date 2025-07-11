# FMI Layered Standard for XCP (FMI-LS-XCP)

[![Build Specification](https://github.com/modelica/fmi-ls-xcp/actions/workflows/build-ls-xcp.yml/badge.svg)](https://github.com/modelica/fmi-ls-xcp/actions/workflows/build-ls-xcp.yml)

This repository contains a current prototype draft for the FMI Layered
Standard for XCP (FMI-LS-XCP) based on the
[Functional Mock-up Interface][FMI] 3.0 standard for the exchange of
simulation models. Note that this draft is being worked on actively,
and thus is subject to change without notice.

This is currently not normative, nor is this document to be considered
officially endorsed by the Modelica Association or other involved
organisations prior to official adoption.

The [FMI Layered Standard for XCP (FMI-LS-XCP)][spec] is currently maintained on
[GitHub][githubspec] and is published [here][spec]. It is based on
the [FMI][] standard.

## Getting Started

Dive into our video ["FMI, Layered Standards and ASAM Standards - Enabling Seamless SiL Simulation of Virtual ECUs"](https://www.youtube.com/watch?v=KzzKRa3jORs).
Discover how the cutting-edge FMI 3.0 standard and the layered standards based on it are revolutionizing the world of Software-in-the-Loop (SiL) simulations.

During the presentation the three new layered standards for simulating virtual ECUs with FMI 3.0 are introduced:

- FMI-LS-XCP for measurement & calibration with XCP
- FMI-LS-BUS for simulation of network communication with CAN, CAN FD CAN XL, FlexRay, Ethernet, LIN
- FMI-LS-STRUCT for structured entities like lookup tables

After this a demo from different SiL tool vendors (Akkodis, Altair, AVL, Bosch, dSPACE, PMSF, SYNOPSYS) illustrates the interoperability of these layered standards.

## Tools

The following list shows importers and exporters that currently support the FMI Layered Standard for XCP:

|Tool|Type|Remarks
|---|---|---|
[Akkodis PROVEtech:TA](https://www.provetech.de/index.php/downloads/provetech-ta)|Importer|Available since Version 2025
[Akkodis PROVEtech:RE](https://www.provetech.de/index.php/downloads/provetech-re)|Importer|Available since Version 2025
[dSPACE ConfigurationDesk](https://www.dspace.com/de/gmb/home/products/sw/impsw/configurationdesk.cfm)|Importer|Available since RLS 2025-A and supported for Binary FMUs only
[dSPACE SystemDesk](https://www.dspace.com/en/pub/home/products/sw/system_architecture_software/systemdesk.cfm)|Exporter|Available since RLS 2024-B, via "FMU with Integrated XCP Service"
[dSPACE VEOS](https://www.dspace.com/en/pub/home/products/sw/simulation_software/veos.cfm)|Importer|Available since RLS 2025-A
[PMSF FMIBench](https://pmsf.eu/products/fmibench/)|Exporter|Available since 1.9.9.15 via "Embed XCP Server"
[SYNOPSYS Silver](https://www.synopsys.com/verification/virtual-prototyping/silver.html)|Exporter|Available from Version W-2025.03
[SYNOPSYS Silver](https://www.synopsys.com/verification/virtual-prototyping/silver.html)|Importer|Available from Version X-2025.09
[Vector vVIRTUALtarget](https://www.vector.com/at/en/products/products-a-z/software/vvirtualtarget/)|Exporter|Available since Version 9

You can add your tool by creating a pull request modifying this README.md file.

## Repository Structure

- `docs` -- Sources of the specification document
- `schema` -- XSD schema for this FMI Layered

## Copyright and License

Code and documentation copyright (C) 2023-2024 The Modelica Association Project FMI.
Code released under the [2-Clause BSD License].
Docs released under [Attribution-ShareAlike 4.0 International].

## Other FMI Layered Standards

If you are interested in the FMI Layered Standard for XCP, the [FMI-LS-BUS] could also be relevant to you.
The [FMI-LS-BUS] specifies an FMI extension for using network communication (e.g. CAN, Ethernet, LIN, FlexRay) within FMUs.

[FMI]: https://fmi-standard.org/
[FMI-LS-BUS]: https://github.com/modelica/fmi-ls-bus
[githubspec]: docs/index.adoc
[spec]: https://modelica.github.io/fmi-ls-xcp/main/
[2-Clause BSD License]: https://opensource.org/licenses/BSD-2-Clause
[Attribution-ShareAlike 4.0 International]: https://creativecommons.org/licenses/by-sa/4.0/
