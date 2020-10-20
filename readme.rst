snakemakeのTUTのHPCクラスタ（xdev）用設定ファイル
=====================================================

クラスタについて
   https://hpcportal.imc.tut.ac.jp/wiki/

Snakemake
   https://snakemake.readthedocs.io/en/stable/


Snakemakeの設定ファイルの配置
----------------------------------

このリポジトリにあるファイルをダウンロードまたはcloneする。
pbsproディレクトリの中身（Snakemakeのプロファイル）を設置する。

::

   mkdir -p ~/.config/snakemake
   cp -r pbspro ~/.config/snakemake/


実行方法
-------------


::

   snakemake --profile pbspro --cluster-config cluster.json

testディレクトリの中でテスト実行ができるようにしてある。


対応しているジョブの設定値
--------------------------------

Snakemakeのタスクそれぞれがバッチジョブとして投入される。


queue
   投入するキューの名前

nodes
   そのジョブが利用するノード数

ncpus
   ノード内の並列数

mem
   利用するメモリ容量（単位を書き忘れるとひどいことになります）

ngpus
   ノードあたりのGPUの数

walltime
   ジョブ実行時間（例：24:00:00）

opt
   その他追加したいqsubのオプション文字列
