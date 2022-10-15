.class Lcom/meizu/smart/wristband/servers/BleServerB10$2;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10;->bindWithMac(Ljava/lang/String;J)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$2;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$2;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$2;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$2;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$2;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB10;->productname:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$2;->val$mac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
