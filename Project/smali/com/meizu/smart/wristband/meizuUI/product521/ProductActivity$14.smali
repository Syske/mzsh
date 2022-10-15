.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;
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

.field final synthetic val$finalVerCode:I

.field final synthetic val$server:Lcom/meizu/smart/wristband/servers/BleServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;ILcom/meizu/smart/wristband/servers/BleServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->val$finalVerCode:I

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->call(Ljava/lang/Object;)Lrx/Observable;

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
    .line 884
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->val$finalVerCode:I

    const/16 v2, 0x81

    if-le v1, v2, :cond_0

    .line 885
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getDateDisplayString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "timeDisplayString":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->saveTimeDisplay(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 888
    .end local v0    # "timeDisplayString":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method
