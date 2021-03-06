# Aetherling Language Theory
Application developers and computer architects previously relied on Moore's Law and Dennard Scaling to 
deliver more performant applications using smaller, lower power, and cooler processors.
Now that those trends are tapering off, developers and architects need other approaches for improving
performance while increasing energy efficiency.
One such technique is to compile the compute-intensive portions of applications to data flow pipelines running on 
FPGA accelerators.
Data flow pipelines can be more energy efficient since they limit memory accesses, the most energy intensive component of an application.
FPGA accelerators can enable more performance through datapath parallelism. 
Such an accelerator can have a vectorized datapath with the exact throughput required by a data flow pipeline.
Thus, compiling applications to data flow pipelines on accelerators offers a way to achieve
performance and thermal improvements following the end of Moore's Law and Dennard Scaling.

Aetherling is a system for compiling image processing applications such as fixed-width stencils 
and reductions to efficient implementations as accelerators on FPGAs.
Developers express these applications as data flow pipelines in a **sequence language**, a standard data parallel programming language.
The sequence language is a high-level language that does not address throughput. 
The absence of throughputs makes the language simpler for developers.
This abstraction also means programs cannot be interpreted as accelerators.

Aetherling transforms these programs into a **space-time IR**. 
The IR specifies the throughput of all operators.
This information enables programs in the IR to be interpreted as accelerators.
The IR also models the latency and resource requirements of the corresponding hardware implementations.

An **auto-scheduler** compiles programs in the sequence language to ones in the space-time IR. 
The goal of the scheduler is to find the highest throughput space-time IR program with the same semantics as the sequence language program that fits on a target FPGA.
An accelerator can fit on an FPGA if it has enough compute resources, such as LUTs, and memory resources, such as registers and BRAMs. 
The auto-scheduler searches the space of space-time IR programs using a set of semantics-preserving rewrite rules.

We use isomorphisms between types in the sequence language and the space-time IR to prove that the rewrite rules preserve semantics. 
These isomorphisms mean that, for any function in the sequence language, there are many semantically equivalent functions using the space-time IR.
The different functions in the space-time IR are different schedules with different throughputs.

## Files To Read
### [Basic.md](Basic.md)
This document covers the basic parts of the sequence language and the space-time IR
1. Types
1. Standard Data Parallel and 1D Image Processing Operators
1. Operators' Properties
1. Isomorphisms

The document also shows the rewrite rules between operators.

### [Types.md](Types.md)
This document provides illustrated examples that further explain the type systems of the sequence language and space-time IR.

### [Scheduling.md](Scheduling.md)
This document explains how to auto-schedule sequence language programs to the space-time IR.
