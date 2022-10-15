.class Lcom/meizu/smart/wristband/servers/BleServerB10$24;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

.field final synthetic val$param1:Ljava/lang/String;

.field final synthetic val$param2:Ljava/lang/String;

.field final synthetic val$param3:Ljava/lang/String;

.field final synthetic val$param4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param1:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param2:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param3:Ljava/lang/String;

    iput-object p5, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param4:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param1:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param2:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param3:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;->val$param4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
