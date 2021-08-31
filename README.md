# favoritesToPlaylist

## 概要 / About

BeatSaber のお気に入り(ハートマークをつけた曲)を抽出して Playlist ファイルに出力します。

---

Outputs BeatSaber favorites (songs with a heart mark) to a playlist file.

## 実行手順 / How to execute

1. 右上の 「Code」ボタンから「Download Zip」ボタンを押して favoritesToPlaylist-main.zip をダウンロード
2. zip から以下の2つのファイルを取り出し任意の場所に配置してfavoritesToPlaylist.batをダブルクリック
    - favoritesToPlaylist.bat
    - favoritesToPlaylist.ps1

3. Author を入力
4. favoritesToPlaylist.bat と同じディレクトリに myfavorites.json が生成されるので BeatSaber インストールディレクトリの Playlists ディレクトリに入れてください。

---

1. Click the "Code" button in the upper right corner and click the "Download Zip" button to download favoritesToPlaylist-main.zip.
2. extract the following two files from the zip and place them in the desired location, then double-click favoritesToPlaylist.bat
    - favoritesToPlaylist.bat
    - favoritesToPlaylist.ps1
3. enter Author
4. myfavorites.json will be generated in the same directory as favoritesToPlaylist.bat. Put it in the Playlists directory of the BeatSaber installation directory.

## 注意事項
- 作者はこのツールを使用したことにより何が起きても責任は持ちません。自己責任でお願いします。
- myfavorites.json のタイトルは favorites 固定です。変更する場合は事前に favoritesToPlaylist.ps1 の $title の値を変更してから実行するか、myfavorites.json を beatlist などで編集してください。
- myfavorites.json の画像(カバーイメージ)は白一色のみなので beastlist などで適宜修正してください。
- Windows 10 バージョン 2004、Steam版 BeatSaber 1.15.0 で動作確認
