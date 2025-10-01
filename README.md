# FMI Layered Standard for XCP (FMI-LS-XCP)

[![Build Specification](https://github.com/modelica/fmi-ls-xcp/actions/workflows/build-ls-xcp.yml/badge.svg)](https://github.com/modelica/fmi-ls-xcp/actions/workflows/build-ls-xcp.yml)

This repository contains the FMI Layered Standard for XCP (FMI-LS-XCP) based on the
[Functional Mock-up Interface][FMI] 3.0 standard for the exchange of simulation models. 

The released versions can be found [here](https://github.com/modelica/fmi-ls-xcp/releases).

The [FMI Layered Standard for XCP (FMI-LS-XCP)][spec] is currently maintained on [GitHub][githubspec] and is published [here][spec]. It is based on
the [FMI][] standard.

## Getting Started

Our publications and presentations may also be of interest to you:

- [Beyond FMI - Towards New Applications with Layered Standards]

or dive into our video ["FMI, Layered Standards and ASAM Standards - Enabling Seamless SiL Simulation of Virtual ECUs"](https://www.youtube.com/watch?v=KzzKRa3jORs).
Discover how the cutting-edge FMI 3.0 standard and the layered standards based on it are revolutionizing the world of Software-in-the-Loop (SiL) simulations.

During the presentation the three new layered standards for simulating virtual ECUs with FMI 3.0 are introduced:

- FMI-LS-XCP for measurement & calibration with XCP
- FMI-LS-BUS for simulation of network communication with CAN, CAN FD CAN XL, FlexRay, Ethernet, LIN
- FMI-LS-STRUCT for structured entities like lookup tables

After this a demo from different SiL tool vendors (Akkodis, Altair, AVL, Bosch, dSPACE, PMSF, SYNOPSYS) illustrates the interoperability of these layered standards.

## Tools

There is an increasing number of software products that already support the FMI Layered Standard for XCP.
A list can be found at [https://fmi-standard.org/tools/](https://fmi-standard.org/tools/) using the filter "XCP".
Please feel free to contact the respective software manufacturers for detailed information about the specific support for the FMI Layered Standard for XCP.
Does your software also support FMI-LS-XCP? Then register your software today on [https://fmi-standard.org/tools/](https://fmi-standard.org/tools/).

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
[Beyond FMI - Towards New Applications with Layered Standards]: https://ecp.ep.liu.se/index.php/modelica/article/view/947