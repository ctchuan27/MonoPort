python apps/train_netG.py \
    --dataset "dynamic" \
    -- \
    name "Yolov4" \
    batch_size 16 \
    num_threads 8 \
    learning_rate 0.0001 \
    netG.mean "(0.0, 0.0, 0.0)" \
    netG.std "(1.0, 1.0, 1.0)" \
    netG.backbone.IMF "Yolov4Filters" \
    netG.ckpt_path "./data/checkpoints/Yolov4/ckpt_0.pth" \
    resume True