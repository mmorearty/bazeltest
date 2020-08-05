def _myrule_impl(ctx):
    ctx.actions.write(
        ctx.outputs.main,
        "hello, world\n"
    )

myrule = rule(
    implementation = _myrule_impl,
    outputs = {
        "main": "%{name}.out"
    }
)
