sh scripts/download_model.sh
pip install -e .
git clone https://github.com/Project-Splinter/ImplicitSegCUDA

#gcc and g++ version need <= 8

#setting: 
#sudo apt-get install g++-8
#sudo apt-get install gcc-8
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 20
#sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 20

#set to 9:
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 70
#sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 70
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 50
#sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 50

cd ImplicitSegCUDA
python setup.py develop
cd ..

git clone https://github.com/Project-Splinter/human_inst_seg
cd human_inst_seg
python setup.py develop
cd ..
git clone https://github.com/Project-Splinter/streamer_pytorch
cd streamer_pytorch
python setup.py develop
cd ..
git clone https://github.com/Project-Splinter/human_det
cd human_det
python setup.py develop
cd ..


#pip install nvidia-pyindex absl-py sphinx-glpi-theme prettytable
#pip install --no-cache-dir --index-url https://pypi.nvidia.com pytorch-quantization
