.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;
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
        "Ljava/lang/Boolean;",
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
    .line 186
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$102(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Z)Z

    .line 191
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$002(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Z)Z

    .line 192
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->showContent(Z)V

    .line 193
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
