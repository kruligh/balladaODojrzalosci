///Shader uniform setup

draw_set_color(c_white);

uni_time = shader_get_uniform(shd_shockwave,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_shockwave,"mouse_pos");
var_mouse_pos_x = mouse_x - camera_get_view_x(0);
var_mouse_pos_y = mouse_y - camera_get_view_y(0);

uni_resolution = shader_get_uniform(shd_shockwave,"resolution");
var_resolution_x = camera_get_view_width(0);
var_resolution_y = camera_get_view_height(0);

uni_shock_amplitude = shader_get_uniform(shd_shockwave,"shock_amplitude");
var_shock_amplitude = 10;

uni_shock_refraction = shader_get_uniform(shd_shockwave,"shock_refraction");
var_shock_refraction = 0.8;

uni_shock_width = shader_get_uniform(shd_shockwave,"shock_width");
var_shock_width = 0.1;

shader_enabled = true;
full_screen_effect = true;

shock_enabled = false;

surf = surface_create(camera_get_view_width(0), camera_get_view_height(0));
view_set_surface_id(0, surf);