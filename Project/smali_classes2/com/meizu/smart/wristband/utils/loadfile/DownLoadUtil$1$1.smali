.class Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"

# interfaces
.implements Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;->this$0:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;

    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "unknow error"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 38
    return-void
.end method
