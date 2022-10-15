.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$6;
.super Landroid/os/Handler;
.source "DfuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$6;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$6;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->finish()V

    .line 289
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 290
    return-void
.end method
