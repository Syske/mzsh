.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;
.super Ljava/lang/Object;
.source "HeartRateFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$102(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Z)Z

    .line 201
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->showContent(Z)V

    .line 203
    return-void
.end method
