# favoritesToPlaylist

## 概要
BeatSaber のお気に入り(ハートマークをつけた曲)を抽出して Playlist ファイルに出力します。

## 実行手順

1. 以下の2つのファイルを任意の場所に配置してfavoritesToPlaylist.batをダブルクリック
    - favoritesToPlaylist.bat
    - favoritesToPlaylist.ps1

2. Author を入力
3. favoritesToPlaylist.bat と同じフォルダに myfavorites.json が生成されるので BeatSaber インストールディレクトリの Playlists ディレクトリに入れてください。

## 注意事項
- 作者はこのツールを使用したことにより何が起きても責任は持ちません。自己責任でお願いします。
- タイトルは favorites 固定です。変更する場合はfavoritesToPlaylist.ps1の$titleの値を変更してください。
- 画像イメージは白一色のみなので beastlist などで適宜修正してください。
- Windows 10 バージョン 2004、Steam版 BeatSaber 1.15.0 で動作確認
