
shader_set(sh_transparent);
shader_set_uniform_f(shader_get_uniform(sh_transparent, "TransVal"), abs(global.wobble));
shader_reset();