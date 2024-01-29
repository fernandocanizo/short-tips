# Kernel missing modules warnings

If the modules is not in `lsmod`, then you can safely ignore these warnings.

## Default image
==> WARNING: Possibly missing firmware for module: 'xhci_pci'

I have this module listed in `lsmod`, should see what to do to fix the warning.

## Fallback image

These warnings should be ignored, as the fallback image tries to build for
whatever hardware, while the default is customized to your hardware.

==> WARNING: Possibly missing firmware for module: 'wd719x'
==> WARNING: Possibly missing firmware for module: 'qla1xxx'
==> WARNING: Possibly missing firmware for module: 'qed'
==> WARNING: Possibly missing firmware for module: 'aic94xx'
==> WARNING: Possibly missing firmware for module: 'qla1280'
==> WARNING: Possibly missing firmware for module: 'bfa'
==> WARNING: Possibly missing firmware for module: 'xhci_pci'
==> WARNING: Possibly missing firmware for module: 'ast'

Find about the missing module with `modinfo <module>` (not really usefull if the
module is not installed).

I don't have any of those modules, except for `xhci_pci` already listed for the default image. So the rest can be safely ignored.

## Other warnings

==> WARNING: consolefont: no font found in configuration


