AC_DEFUN([AC_AMDGPU_DRM_HEADERS], [
	dnl #
	dnl # RHEL 7.x wrapper
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/drm_backport.h])

	dnl #
	dnl # Optional devices ID for amdgpu driver
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/amdgpu_pciid.h])

	dnl #
	dnl # commit v5.0-rc1-342-gfcd70cd36b9b
	dnl # drm: Split out drm_probe_helper.h
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/drm_probe_helper.h])

	dnl #
	dnl # v5.4-rc1-214-g4e98f871bcff
	dnl # drm: delete drmP.h + drm_os_linux.h
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/drmP.h])

	dnl #
	dnl # commit v5.5-rc2-783-g368fd0aad1be
	dnl # drm: Add Reusable task barrier.
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/task_barrier.h])

	dnl #
	dnl # v5.6-rc5-1258-gc6603c740e0e
	dnl # drm: add managed resources tied to drm_device
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/drm_managed.h])

	dnl #
	dnl # Required by AC_KERNEL_SUPPORTED_AMD_CHIPS macro
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/amd_asic_type.h])

	dnl #
	dnl # v5.12-rc3-330-g2916059147ea
	dnl # drm/aperture: Add infrastructure for aperture ownership
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/drm_aperture.h])

	dnl #
	dnl # v5.16-rc5-872-g5b529e8d9c38
	dnl # drm/dp: Move public DisplayPort headers into dp/
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/dp/drm_dp_helper.h])

	dnl #
	dnl # v5.16-rc5-872-g5b529e8d9c38
	dnl # drm/dp: Move public DisplayPort headers into dp/
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/dp/drm_dp_mst_helper.h])

	dnl #
	dnl # v5.11-rc2-620-g6dd7b6ce43ac
	dnl # drm: Add additional atomic helpers for shadow-buffered planes
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/drm_gem_atomic_helper.h])

	dnl #
	dnl # v5.18-rc2-594-gda68386d9edb
	dnl # drm: Rename dp/ to display/
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_dp_helper.h])

	dnl #
	dnl # v5.18-rc2-594-gda68386d9edb
	dnl # drm: Rename dp/ to display/
	dnl #
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_dp_mst_helper.h])

	AC_KERNEL_CHECK_HEADERS([drm/display/drm_dsc.h])
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_dsc_helper.h])
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_hdmi_helper.h])
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_hdcp_helper.h])
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_hdcp.h])
	AC_KERNEL_CHECK_HEADERS([drm/display/drm_dp.h])

	dnl #
	dnl # v5.7-13141-gca5999fde0a1
	dnl # mm: introduce include/linux/pgtable.h
	dnl #
	AC_KERNEL_CHECK_HEADERS([linux/pgtable.h])

        dnl #
        dnl # v6.1-rc2-542-g8ab59da26bc0
        dnl # drm/fb-helper: Move generic fbdev emulation into separate source file
        dnl #
        AC_KERNEL_CHECK_HEADERS([drm/drm_fbdev_generic.h])

        dnl #
        dnl # v6.2-rc6-1265-g849ee8a2f0df
        dnl # drm/suballoc: Extract amdgpu_sa.c as generic suballocation helper
        dnl #
        AC_KERNEL_CHECK_HEADERS([drm/drm_suballoc.h])
       
        dnl #
        dnl # v6.4-rc7-2018-g09593216bff1
        dnl # drm: execution context for GEM buffers v7
        dnl #
        AC_KERNEL_CHECK_HEADERS([drm/drm_exec.h])

        dnl #
        dnl # v6.6-rc2-771-g8eb80946ab0c
        dnl # drm/edid: split out drm_eld.h from drm_edid.h
        dnl #
        AC_KERNEL_CHECK_HEADERS([drm/drm_eld.h])

    dnl #
    dnl # v6.9-rc2-212-ge2a1cda3e0c7
    dnl # drm/panic: Add drm panic locking
    dnl #
    AC_KERNEL_CHECK_HEADERS([drm/drm_panic.h])

    dnl #
    dnl # v6.9-rc6-1436-gaae4682e5d66
    dnl # drm/fbdev-generic: Convert to fbdev-ttm
    dnl #
    AC_KERNEL_CHECK_HEADERS([drm/drm_fbdev_ttm.h])

    dnl #
    dnl # v6.12-rc1-3-g5f60d5f6bbc1
    dnl # move asm/unaligned.h to linux/unaligned.h
    dnl #
    AC_KERNEL_CHECK_HEADERS([linux/unaligned.h])

    dnl #
    dnl # v6.11-rc7-1514-gd07fdf922592
    dnl # drm: Add client-agnostic setup helper
    dnl #
    AC_KERNEL_CHECK_HEADERS([drm/clients/drm_client_setup.h])

	dnl #
    dnl # v6.12-rc2-586-gdf7e8b522a60
    dnl # drm/client: Move client event handlers to drm_client_event.c
    dnl #
    AC_KERNEL_CHECK_HEADERS([drm/drm_client_event.h])
])
