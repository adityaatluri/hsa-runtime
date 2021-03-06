.hsa_code_object_version 1,0
.hsa_code_object_isa

.text

hello_world:

   .amd_kernel_code_t
      enable_sgpr_kernarg_segment_ptr = 1
      is_ptr64 = 1
      compute_pgm_rsrc1_vgprs = 0
      compute_pgm_rsrc1_sgprs = 0
      compute_pgm_rsrc2_user_sgpr = 2
      kernarg_segment_byte_size = 8
      wavefront_sgpr_count = 2
      workitem_vgpr_count = 3
  .end_amd_kernel_code_t

  s_load_dwordx2 s[0:1], s[0:1] 0x0
  v_mov_b32 v0, 3.14159
  s_waitcnt lgkmcnt(0)
  v_mov_b32 v1, s0
  v_mov_b32 v2, s1
  flat_store_dword v0, v[1:2]
  s_endpgm
