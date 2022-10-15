.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;
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
    .line 865
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .locals 2
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
    .line 868
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getHeartRateMonitingString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "heartRateMonitingString":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->saveHrMonitor(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method
