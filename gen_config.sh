ndocs=$1
loadpath=$2
dbpath=$3
cachemb=$4
wbsmb=$5
compression=$6
readers=$7
iterators=$8
writers=$9
warmup=${10}
duration=${11}
write_rate=${12}

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,1," | \
sed "s,READERS_VALUE,1," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,0," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,WARMINGUP_VALUE,10," | \
sed "s,DURATION_VALUE,60," > bench_config.ini.load

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,1," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,0," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.pq.1

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,${readers}," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,0," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.pq.n

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,1," | \
sed "s,WRITERS_VALUE,0," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.rq.1

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,${iterators}," | \
sed "s,WRITERS_VALUE,0," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.rq.n

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,1," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,SYNC_VALUE,sync," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.ows.1

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,${writers}," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,SYNC_VALUE,sync," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.ows.n

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,1," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,SYNC_VALUE,async," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.owa.1

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,${writers}," | \
sed "s,WRITE_RATE_VALUE,0," | \
sed "s,SYNC_VALUE,async," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.owa.n

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,1," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,1," | \
sed "s,WRITE_RATE_VALUE,${write_rate}," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.pqw.1

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,${readers}," | \
sed "s,ITERATORS_VALUE,0," | \
sed "s,WRITERS_VALUE,1," | \
sed "s,WRITE_RATE_VALUE,${write_rate}," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.pqw.n

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,1," | \
sed "s,WRITERS_VALUE,1," | \
sed "s,WRITE_RATE_VALUE,${write_rate}," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.rqw.1

cat bench_config.ini.template | \
sed "s,NDOCS_VALUE,${ndocs}," | \
sed "s,LOG_VALUE,${loadpath}," | \
sed "s,DB_VALUE,${dbpath}," | \
sed "s,CACHE_VALUE,${cachemb}," | \
sed "s,WBS_VALUE,${wbsmb}," | \
sed "s,COMPRESSION_VALUE,${compression}," | \
sed "s,LOAD_VALUE,0," | \
sed "s,READERS_VALUE,0," | \
sed "s,ITERATORS_VALUE,${iterators}," | \
sed "s,WRITERS_VALUE,1," | \
sed "s,WRITE_RATE_VALUE,${write_rate}," | \
sed "s,WARMINGUP_VALUE,${warmup}," | \
sed "s,DURATION_VALUE,${duration}," > bench_config.ini.rqw.n