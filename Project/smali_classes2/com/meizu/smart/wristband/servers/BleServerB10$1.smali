.class Lcom/meizu/smart/wristband/servers/BleServerB10$1;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->disconnectConnection()Z

    .line 103
    return-void
.end method
