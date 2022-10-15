.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->setListener()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 490
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    .line 491
    .local v0, "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 492
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v1, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$1200(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Integer;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$1300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;I)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;->call(Ljava/lang/Integer;)V

    return-void
.end method
