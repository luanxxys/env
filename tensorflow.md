# Installing TensorFlow

[official website](https://www.tensorflow.org/install/)

### Installing TensorFlow on Ubuntu with Anaconda
> TensorFlow with GPU support

- Activate the conda environment that you want to intall tensorflow

        $ source activate <coda_env_name>

- Issue a command of the following format to install TensorFlow inside your conda environment

        $ pip install --ignore-installed --upgrade <tfBinaryURL>

    > <tfBinaryURL> is the [URL of the TensorFlow Python package](https://tensorflow.google.cn/install/install_linux#the_url_of_the_tensorflow_python_package),where you can choose the type of tensorflow, included kinds of CPU/GPU and Python version.
    >
    > You can run the command to upgrade tensorflow, or if there are unexplainable problems happened.
