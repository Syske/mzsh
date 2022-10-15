.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$202(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Z)Z

    .line 271
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->doRefreshlistener()V

    .line 272
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 273
    return-void
.end method
