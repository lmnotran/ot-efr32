
## Generate CMake libraries from an .slcp project
To generate the `.slcp` projects included in `configuration.yml`, just run
```bash
<path-to-vendor-extension>/script/generate
```

This will generate the CMake files and the `autogen` and `config` directories for each platform project in `generated_projects/`.
These files can be committed so that they don't need to be generated every build.

## Building

```bash
<path-to-vendor-extension>/script/build
```