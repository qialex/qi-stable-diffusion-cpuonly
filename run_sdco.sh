#!/bin/bash
cd Home/$USER/stable-diffusion-cpuonly-main/
conda activate sdco
python ./webui.py --no-half
