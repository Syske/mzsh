.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;
.super Lrx/Subscriber;
.source "DfuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        ">;"
    }
.end annotation


# instance fields
.field isOTA:Z

.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->isOTA:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->isOTA:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->finish()V

    .line 266
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanForSupportDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onNext(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 1
    .param p1, "bleDevice"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->isOTA:Z

    .line 277
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->stopScan()V

    .line 278
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$400(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    .line 280
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 257
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;->onNext(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method
