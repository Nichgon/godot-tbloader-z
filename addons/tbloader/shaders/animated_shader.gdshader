shader_type spatial;
//render_mode unshaded;

uniform sampler2D frames[10] : source_color, filter_nearest; 
uniform int frame_count;
uniform float speed = 2.0;

void fragment() {
    int frame_idx = int(mod(TIME*speed, float(frame_count)));
    ALBEDO = texture(frames[frame_idx], UV).rgb;
    SPECULAR = 0.0;
}
