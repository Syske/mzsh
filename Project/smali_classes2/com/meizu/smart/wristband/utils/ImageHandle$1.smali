.class Lcom/meizu/smart/wristband/utils/ImageHandle$1;
.super Landroid/os/Handler;
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

.field final synthetic val$imageCallback:Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/utils/ImageHandle;Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/utils/ImageHandle;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$1;->this$0:Lcom/meizu/smart/wristband/utils/ImageHandle;

    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$1;->val$imageCallback:Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/ImageHandle$1;->val$imageCallback:Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/meizu/smart/wristband/utils/ImageHandle$ImageCallback;->imageLoaded(Ljava/lang/String;)V

    .line 27
    return-void
.end method
