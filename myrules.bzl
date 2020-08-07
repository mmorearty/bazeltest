def _myrule_impl(ctx):
    ctx.actions.run_shell(
        inputs = [],
        outputs = [ctx.outputs.main],
        command = "echo $PATH > {}".format(ctx.outputs.main.path)
    )

myrule = rule(
    implementation = _myrule_impl,
    outputs = {
        "main": "%{name}.out"
    }
)
