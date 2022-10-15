.class Lcom/meizu/smart/wristband/bluetooth/BleService$17;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToMacWithoutScan(JLjava/lang/String;Z)Lrx/Observable;
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
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$17;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "bleDevice"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 551
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 548
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$17;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
