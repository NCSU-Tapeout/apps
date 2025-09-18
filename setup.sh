if [ -z "$PDK_DIR" ]; then
    # If PDK_ROOT is not set, assign the default value
    export PDK_DIR="/mnt/designkits/ncsu/Sky130/share/pdk/dk_cadence/sky130_release_0.0.4"

    echo "PDK_DIR was not set. Setting it to $PDK_DIR"
else
    echo "PDK_ROOT is already set to $PDK_DIR"
fi

source setup_cadence_sky130.sh
module use ./submodules/apps/modules
find . -name "*.cdslck" -print -exec rm {} \;
module load emx-local/23.10 xcelium-local/24.10 spectre-local/23.10 ic-local/23.10 pegasus-local/23.14 quantus-local/23.11
virtuoso &
