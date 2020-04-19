
shader_set(sh_gaussian_blur);
usize = shader_get_uniform(sh_gaussian_blur,"size");
shader_set_uniform_f(usize,512,512,1);
shader_reset();