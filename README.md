# Project

## Index

  - [Overview](#overview) 
  - [Getting Started](#getting-started)
  - [Usage](#Usage)
  - [Demo](#Demo)

## Overview

- A **binary loader** implemented with **libbfd**.
- This code is based on Practical Binary Analysis and has improved some functions for the **latest version of libbfd (2020)**.
- Parse **sections** and **symbol tables** of the binary.

## Getting Started

### Depencies

- binutils-dev

```
sudo apt-get install -y binutils-dev
```

## Usage

Usage: `./loader_demo <binary>`

Simply pass the path of the binary to be analyzed in `argv[1]`.

## Demo

In the `test_bin` directory, a binary `ls` for testing is prepared.

The output is as follows.

```
$ ./loader_demo ./test_bin/ls

loaded binary './test_bin/ls' elf64-x86-64/i386:x86-64 (64 bits) entry@0x00000000000067d0
  0x0000000000000318 28       .interp              DATA
  0x0000000000000338 32       .note.gnu.property   DATA
  0x0000000000000358 36       .note.gnu.build-id   DATA
  0x000000000000037c 32       .note.ABI-tag        DATA
  0x00000000000003a0 228      .gnu.hash            DATA

  [skip]

  0x0000000000022018 8        .fini_array          DATA
  0x0000000000022020 2616     .data.rel.ro         DATA
  0x0000000000022a58 512      .dynamic             DATA
  0x0000000000022c58 928      .got                 DATA
  0x0000000000023000 616      .data                DATA
scanned symbol tables
  __ctype_toupper_loc                      0x0000000000000000 FUNC
  getenv                                   0x0000000000000000 FUNC
  sigprocmask                              0x0000000000000000 FUNC
  __snprintf_chk                           0x0000000000000000 FUNC
  raise                                    0x0000000000000000 FUNC
 
   [skip]
 
  _obstack_allocated_p                     0x0000000000016bb0 FUNC
  _obstack_begin_1                         0x0000000000016aa0 FUNC
  __cxa_finalize                           0x0000000000000000 FUNC
  _obstack_newchunk                        0x0000000000016ac0 FUNC
  malloc                                   0x0000000000000000 FUNC
```

