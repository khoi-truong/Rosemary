"""Generate Info.plist using a template.
It is much more memory-efficient to use a template file than creating the whole
content during the analysis phase.
Usage: 

load(
    "@vinone_bazel_core//core:substitutions.bzl",
    "substitutions",
)

substitutions(
    name = "MyFile",
    output = "MyFile.txt",
    substitutions = {
        "$(AAA)" : "VALUE1",
        "$(BBB)" : "VALUE2",
    },
    template = "MyFile.txt.template",
)
"""

def _substitutions_impl(ctx):
  ctx.actions.expand_template(
    template = ctx.file.template,
    output = ctx.outputs.file,
    substitutions = ctx.attr.substitutions,
    is_executable = False,
  )

substitutions = rule(
  implementation = _substitutions_impl,
  attrs = {
    "output": attr.string(
      default = "",
      mandatory = True,
    ),
    "substitutions": attr.string_dict(mandatory = True),
    "template": attr.label(
      default = None,
      allow_single_file = True,
      mandatory = True,
    ),
  },
  outputs = {"file": "%{output}"},
)
