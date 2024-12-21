FROM nvidia/cuda:12.6.3-cudnn-devel-ubuntu22.04

# Set non-interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.10 python3.10-venv python3.10-distutils build-essential python3-dev cython3 curl wget fish git \
    && rm -rf /var/lib/apt/lists/*

# Set Python 3.10 as default
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1 && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1

# Set fish as the default shell
RUN echo /usr/bin/fish | tee -a /etc/shells && \
    chsh -s /usr/bin/fish

# Set the default shell to fish
CMD [\"fish\"]
