#pragma BLENDER_REQUIRE(gpu_shader_cfg_world_clip_lib.glsl)

void main()
{
  gl_Position = ModelViewProjectionMatrix * vec4(pos, 1.0);
  finalColor = color;

#ifdef USE_WORLD_CLIP_PLANES
  world_clip_planes_calc_clip_distance((clipPlanes.ClipModelMatrix * vec4(pos, 1.0)).xyz);
#endif
}
