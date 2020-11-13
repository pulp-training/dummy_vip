# Instructions
  You have the task to integrate a very simple dummy IP into PULPissimo using the IPApprox dependency management tool.
  The module doesn't really do anything except for printing some log statements during simulation but it forces you to
  go throught the complete IP integration and packaging flow using IPApprox.
  
1.  Create your own fork of the [`dummy_vip`
    repository](https://github.com/pulp-training/dummy_vip).

2.  Create a package description for IPApprox in your newly forked
    repository listin the relevant files within the package. Since
    dummy_vip contains non-synthesizable code it should be
    packaged in a manner such that it won't be included during ASIC &
    FPGA synthesis.

3.  Instantiate the `dummy_top` module within the toplevel of `pulp_soc`
    (you have to create a new fork of pulp_soc for this
    purpose). Again, take the appropriate measures to only include
    module if we are compiling the codebase for simulation.

4.  Build and simulate PULPissimo with an application of your chosing.
    If you correctly integrated the IP, the simulation should run
    normally and you will see the output:
    
    ``` example
    # ** Info: Successfully integrated dummy IP.
    #    Time: 10 us  Scope: tb_pulp.i_dut.i_dummy_top.i_dummy_sub \
    #    File: /home/meggiman/projects/pulp/pulpissimo-new-soc-interconnect/sim/ \
    ../ips/dummy_vip/rtl/dummy_submodule.sv Line: 28
    ```

5.  If everything works, freeze your changes to the dummy_vip
    fork and update all version tags in the dependent packages.

6.  Run ./update-ips for a last time to verify, that the version
    pointers are correclty set and there are no dependency conflicts.
