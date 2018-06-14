baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: snpsift-filter
inputs:
  filter_expression:
    doc: filter VCF files using arbitrary expressions e.g. (QUAL > 30)
    inputBinding:
      position: 2
      prefix: --filter_expression
    type: string
  filtered_vcf_filename:
    default: filtered
    doc: The prefix that will be used to name the output file.
    inputBinding:
      position: 3
      prefix: --filtered_vcf_filename
    type: string
  variants_vcf:
    doc: Annotated VCF file  to filter and manipulate
    inputBinding:
      position: 1
      prefix: --variants_vcf
    type: File
label: SnpSift filter
outputs:
  filtered_vcf:
    doc: Filtered VCF file
    outputBinding:
      glob: filtered_vcf/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/snpsift-filter:13
s:author:
  class: s:Person
  s:name: Adam Halstead
