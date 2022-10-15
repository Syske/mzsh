.class public interface abstract Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract onComplate()V
.end method

.method public abstract onFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onReadData([B)V
.end method

.method public abstract onWriteData()V
.end method
