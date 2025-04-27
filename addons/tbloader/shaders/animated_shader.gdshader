shader_type spatial;
//render_mode unshaded;

uniform sampler2D frames[10] : filter_nearest; 
uniform int frame_count;

void fragment() {
    int frame_idx = int(mod(TIME*1.0, float(frame_count)));
    ALBEDO = texture(frames[frame_idx], UV).rgb;
}