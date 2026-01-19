# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui
# No custom nodes to install for this workflow

# download models into comfyui
RUN comfy model download --url https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_edit_2509_fp8_e4m3fn.safetensors --relative-path models/diffusion_models/qwen-image-edit --filename qwen_image_edit_2509_fp8_e4m3fn.safetensors
RUN comfy model download --url https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Edit-2509/Qwen-Image-Edit-2509-Lightning-4steps-V1.0-bf16.safetensors --relative-path models/loras/qwen-image-edit-lightning --filename Qwen-Image-Edit-2509-Lightning-4steps-V1.0-bf16.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
