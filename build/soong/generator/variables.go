package generator

import (
	"fmt"

	"android/soong/android"
)

func swiftExpandVariables(ctx android.ModuleContext, in string) string {
	swiftVars := ctx.Config().VendorConfig("swiftVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if swiftVars.IsSet(name) {
			return swiftVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
