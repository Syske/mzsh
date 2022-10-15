.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$1;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->run()V
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
.field final synthetic this$2:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$1;->this$2:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 472
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$1;->this$2:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->finishRefreshing()V

    .line 476
    return-void
.end method
