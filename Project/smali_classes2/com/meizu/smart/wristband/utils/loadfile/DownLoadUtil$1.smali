.class final Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil;->downloadFile(Ljava/net/URL;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$localPath:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;->val$url:Ljava/net/URL;

    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;->val$localPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;->val$url:Ljava/net/URL;

    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;->val$localPath:Ljava/lang/String;

    new-instance v2, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;

    invoke-direct {v2, p0, p1}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1$1;-><init>(Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;Lrx/Subscriber;)V

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil;->doDownload(Ljava/net/URL;Ljava/lang/String;Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;)V

    .line 45
    return-void
.end method
