.class Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1$1;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->finish()V

    .line 121
    return-void
.end method
