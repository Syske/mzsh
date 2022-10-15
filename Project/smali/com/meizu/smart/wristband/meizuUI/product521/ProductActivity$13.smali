.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$13;
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


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$13;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$13;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
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
    .line 903
    const-string/jumbo v0, "\u8fd0\u52a8\u76ee\u6807\u5f00\u5173\u6709\u6539\u52a8\uff0c\u540c\u6b65\u5230\u624b\u73af"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$13;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->setSportAim()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
