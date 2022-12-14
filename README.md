# docker container for jupyterlab

## dependency

- [docker](https://www.docker.com/)
- [python](https://www.python.org/)
- [jupyterlab](https://jupyterlab.readthedocs.io/en/stable/#)
- [Google Fonts noto CJK](https://github.com/googlefonts/noto-cjk)

## Setup

- Dockerをインストール

```tree
.
├── Dockerfile
├── README.md
├── config
│   └── matplotlibrc
├── docker-compose.yml
├── requirements.txt
└── src
    └── Untitled.ipynb
```

- requirements.txt に利用するパッケージとバージョンを追加
  - [pypi](https://pypi.org/)

## Usage

- Dockerfileとdocker-composeがあるフォルダでターミナルから'docker compose up -d'
- コンテナ起動したらブラウザで'http://localhost:8080/lab'

## Licence

## Authors

## References

- [DockerでJupyterLab環境を作る](https://qiita.com/plumfield56/items/335cad3b58afe55f6529)

## memo

- numpyとかで日本語表示の設定出来てない
  - bokehで使えるかテスト
