pip install -e .
pip uninstall torch torchvision
pip install torch==2.1.1+cu121 torchvision==0.16.1+cu121 -f https://download.pytorch.org/whl/torch_stable.html
