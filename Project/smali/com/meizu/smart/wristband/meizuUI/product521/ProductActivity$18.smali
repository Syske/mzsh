.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->sendToDevice()V
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
        "Ljava/lang/Object;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

.field final synthetic val$server:Lcom/meizu/smart/wristband/servers/BleServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/servers/BleServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "bCheck":Z
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getFindPhoneString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "findphoneString":Ljava/lang/String;
    const-string v2, "01"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    :cond_0
    const/4 v0, 0x1

    .line 841
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->findPhoneFlag(Z)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method
