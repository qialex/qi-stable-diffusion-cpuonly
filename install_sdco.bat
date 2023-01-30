echo This Script is now installing a Stable Diffusion cpu only variant. 

mkdir "models/ldm/stable-diffusion-v1/"
mkdir "outputs/extras-samples"
mkdir "outputs/img2img-samples/samples"
mkdir "outputs/txt2img-samples/samples"

call conda install pytorch torchvision torchaudio cpuonly -c pytorch
call conda env create -f environment-cpuonly.yaml
call conda activate sdco

call pip install pynvml gradio keras-unet fairseq basicsr facexlib
call pip install -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers
call pip install -e git+https://github.com/openai/CLIP.git@main#egg=clip
call pip install -e git+https://github.com/TencentARC/GFPGAN#egg=GFPGAN
call pip install -e git+https://github.com/xinntao/Real-ESRGAN#egg=realesrgan
call pip install -e git+https://github.com/hlky/k-diffusion-sd#egg=k_diffusion


call python /data/qi-stable-diffusion-cpuonly/webui.py --no-half