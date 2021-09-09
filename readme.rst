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

testディレクトリの中でテスト実行ができる。

::

   snakemake --profile pbspro --cluster-config cluster.json



対応しているジョブの設定値
--------------------------------

Snakemakeのタスクそれぞれがバッチジョブとして投入される。


cluster.jsonでの設定：

queue
   投入するキューの名前

opt
   その他追加したいqsubのオプション文字列


各taskのresourcesセクションでの設定：

nodes
   そのジョブが利用するノード数

mem_mb
   利用するメモリ量(MB単位)

ngpus
   ノードあたりのGPUの数

walltime_hour
   ジョブ実行時間（1時間単位）


threadsセクションで設定：利用CPU数
