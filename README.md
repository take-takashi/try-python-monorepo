# try-python-monorepo

pythonでモノレポ構成について考える

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
