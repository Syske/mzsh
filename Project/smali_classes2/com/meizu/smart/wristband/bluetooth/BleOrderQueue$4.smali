.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$4;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->sendCharacteristicBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$4;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .param p2, "aBoolean2"    # Ljava/lang/Boolean;

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$4;->call(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
