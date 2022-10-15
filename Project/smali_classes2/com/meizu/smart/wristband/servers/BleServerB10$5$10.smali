.class Lcom/meizu/smart/wristband/servers/BleServerB10$5$10;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10$5;->call(Lrx/Subscriber;)V
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
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$10;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$10;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->stepStore()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
