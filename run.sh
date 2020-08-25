DATASET_DIR=../data/nuswide/
TRAIN_DIR=../data/nuswide/net-vgg16/lstm-sem3/nprev_256_512_32
CHECKPOINT_PATH=../data/pretrained/vgg_16.ckpt
python runner.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=nuswide \
    --model_base=vgg_16 \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --checkpoint_scopes=vgg_16 \
    --trainable_scopes=cnn_rnn_att \
    --model=lstm_sem_v3 \
    --dim_hidden=512 \
    --dim_embed=256 \
    --prev2out=False \
    --ctx2out=False \
    --run_opt=test \
    --batch_size=32 \
    --eval_batch_size=100 \
    --loss=sigmoid \