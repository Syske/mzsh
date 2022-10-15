.class Lcom/meizu/smart/wristband/utils/ImageHandle$2;
.super Ljava/lang/Thread;
.source "ImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/utils/ImageHandle;->loadDrawable(Ljava/lang/String;Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/utils/ImageHandle;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/utils/ImageHandle;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/utils/ImageHandle;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->this$0:Lcom/meizu/smart/wristband/utils/ImageHandle;

    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->this$0:Lcom/meizu/smart/wristband/utils/ImageHandle;

    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$imageUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/ImageHandle;->loadImageFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/smart/wristband/utils/ImageHandle;->drawable:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->this$0:Lcom/meizu/smart/wristband/utils/ImageHandle;

    iget-object v4, v4, Lcom/meizu/smart/wristband/utils/ImageHandle;->drawable:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 38
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 39
    .end local v1    # "message":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$handler:Landroid/os/Handler;

    const-string v3, ""

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 43
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
