.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 508
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 510
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    .line 511
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 512
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    const v2, 0x7f0802d1

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 515
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 505
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;->call(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
