# AWS デモ：EC2

## 🎯 内容

EC2 インスタンスの作成、セキュアな接続、アプリケーション起動までを実施します。

## 🧱 使用する AWS サービス

- Amazon EC2
- Amazon EC2 Security Group
- AWS Systems Manager
- AWS CloudFormation

---

## 🗂️ 構成概要

```
+------------------------+
|       EC2 Instance     |
|------------------------|
|  OS: Amazon Linux 2023 |
|  Node.js + Git         |
|  Port: 8080 Open       |
+------------------------+
         ↑
         |（SSM Session Manager 経由で接続）
```

---

## 🚀 デプロイ手順

### 1. CloudFormation スタックを作成

- AWS マネジメントコンソール → CloudFormation → 「スタックの作成」
- テンプレートファイル（`template.yml`）をアップロードする
- デフォルト設定のまま作成

### 2. EC2 インスタンスが起動したら確認

- EC2 → インスタンス一覧 → インスタンス が `running` になっていること

### 3. Systems Manager から接続

- Systems Manager → セッションマネージャー → セッションの開始
- 該当インスタンスを選択して接続

### 4. Web アクセスでアプリを表示

インスタンスの **パブリック IP アドレス** を確認し、ブラウザで以下にアクセス：

```
http://<EC2のパブリックIP>:8080
```

---

## 🧼 クリーンアップ

- CloudFormation → スタックを選択 → 削除
- すべてのリソースが自動で削除されます

---

## 参考

- [Amazon Linux 2023 公式ドキュメント](https://docs.aws.amazon.com/linux/al2023/ug/)
- [Systems Manager セッションマネージャー](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html)
- [Scotch.io Node ToDo App GitHub](https://github.com/scotch-io/node-todo)

---
