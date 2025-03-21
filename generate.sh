for NAME in Tensor SparseTensor Schema Message File
do
	curl https://raw.githubusercontent.com/apache/arrow/main/format/$NAME.fbs -o $NAME.fbs
done

planus --ignore-docstring-errors rust *.fbs -o src/ipc/generated.rs 
