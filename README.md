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

## News

Looking forward to our joint presentation and demo "FMI, Layered Standards and ASAM Standards - Enabling Seamless SiL Simulation of Virtual ECUs" from the FMI Project at the coming ASAM International Conference, 2024 in Munich.
You can meet us also at the Modelica Association booth there!

We will present three new layered standards for simulating virtual ECUs with FMI 3.0:

- FMI-LS-XCP for measurement & calibration with XCP
- FMI-LS-BUS for simulation of network communication with CAN, CAN FD CAN XL, FlexRay, Ethernet, LIN
- FMI-LS-STRUCT for structured entities like lookup tables

A demo from tool vendors (Akkodis, Altair, AVL, Bosch, dSPACE, PMSF, SYNOPSYS) illustrates the interoperability of these layered standards.

![AIC Announcemet Speakers FMI](landingpage/AIC_Announcemet_Speaker_Single_FMI.jpg)

Looking forward to meet you in Munich!
More information on the conference: <https://www.asam.net/conferences-events/detail/asam-international-conference-2024/>

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
