# DevContainer-with-GPU
Dockerを使ってGPUが必要なPythonプロジェクトのworkspaceを作成する

VSCodeのDevContainerとは関係ありません

# 環境必要要件
- `NVIDIA Driver`
- `CUDA Toolkit >= 12.6`
- `NVIDIA Container Toolkit`
- `docker`
- `docker compose`

# 内部構成
### パッケージバージョン
- `cuda` - `12.6.3`
- `cudnn` - `12.6.3`
- `python` - `3.10`

### インストール済みパッケージ情報
- `fish`
- `curl`
- `wget`
- `git`
- `build-essential`
- `python3-dev`
- `cython3`
- `python3.10-venv`
- `python3.10-distutils`

### その他情報
shell - `fish`