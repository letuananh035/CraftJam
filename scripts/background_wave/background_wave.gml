uTime = shader_get_uniform(sh_wave, "Time");

shader_set(sh_wave);
shader_set_uniform_f(uTime, current_time/1000);