# try-python-monorepo

pythonでモノレポ構成について考える

現時点の気づき

* マルチルートワークスペース時、pythonファイルを編集するときに選択するpythonインタプリターの選択が肝

  * `frontend`を選択すると、`frontent`以下のファイル修正時に適用されるインタプリターを設定できるっぽい

  * ただ、モノレポでやるには`.venv_frontend`のようにわかりやすい名前を仮想環境につけた方が良さそう

```bash
# 仮に`frontnend`フォルダを作成する
% mkdir -p frontend
# 仮に`backend`フォルダを作成する
% mkdir -p backend
% touch root.code-workspace
% vim root.code-workspace
% cat root.code-workspace 
{
    "folders": [
        {
            "path": ".",
            "name": "root"
        },
        {
            "path": "backend"
        },
        {
            "path": "frontend"
        }
    ]
}
# root.code-workspaceを開く

% touch backend/.mise.toml
% cat <<EOF >backend/.mise.toml
[tools]
python = "3.12"
EOF
% cd backend
% mise trust -a
% mise install
```
