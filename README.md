<!--
  ~ Copyright 2022 NWChemEx-Project
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
-->

[![Actions](https://github.com/NWChemEx-Project/Utilities/workflows/C_C++_CI/badge.svg)](https://github.com/NWChemEx-Project/Utilities)

[![Codecov](https://codecov.io/github/NWChemEx-Project/Utilities/branch/master/graphs/sunburst.svg?token=gdemefzIU7)](https://codecov.io/github/NWChemEx-Project/Utilities/branch/master)

Utilities Repository
======================

[Documentation](https://nwchemex-project.github.io/Utilities/)

The C++ standard library as well as the STL are great for providing many of the
features one needs to write a code.  However, they leave much to be desired.
This library is intended to be our "Boost" in that it's a series of 
extensions to the standard libraries for functionality we commonly want.

At the moment this functionality can be expressed as falling into one of three
sub libraries:

- IterTools: Classes designed to make iteration easier.  This includes base
             classes for writing your own iterators as well as classes for
             iterating over common situations such as:  
             - All permutations of a sequence  
             - All combinations of a sequence       
- Mathematician : Math functionality beyond that of the STL including:  
  - Binomial coefficients
  - Multinomial coefficients
- TypeTraits : Structs to make meta-template programming easier
  - Extended type intraspection (*i.e.* determining if a type has a member)

Building Utilities
--------------------

Utilities is built using [CPP](https://github.com/CMakePackagingProject/CMakePackagingProject.git),
hence the first step is to build and install CPP if you have not done so
already. Then building Utilities can be accomplished by:

```bash
git clone https://github.com/NWChemEx-Project/Utilities.git
cd Utilities
cmake -H. -Bbuild -DCMAKE_PREFIX_PATH=<where/you/installed/CPP> \
                  -DCMAKE_INSTALL_PREFIX=<where/you/want/to/install/Utilities>
cd build
cmake --build .
#May need to run as an admin depending on where you are installing
cmake --build . --target install                  
```

Note that the configure will appear to hang when it gets to Catch2. 
This is because it is building Catch2. Building of Catch2 can be 
avoided by disabling tests (*i.e.*, passing `-DBUILD_TESTS=OFF` to the first
invocation of `cmake`) or by providing CMake with an already built version of
Catch2 by passing `-DCatch2_ROOT=/path/to/catch2` to the first invocation of 
`cmake`.
