# mkcbl
Make your CBL Mariner ISO on your Ubuntu system, and fast.

!!! Only tested on 18.04+

# Using

Run mkcbl-phase1.sh and wait for it. Give it sudo privileges or the build will fail due to missing dependencies.

After it tells you to logout, log out and log back in. Run mkcbl-phase2.sh, Phase 2 will install Git, clone and checkout the CBL Mariner repository and build the ISO image.
