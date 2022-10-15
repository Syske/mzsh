.class Lcom/meizu/smart/wristband/bluetooth/BleService$23;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;
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

.field final synthetic val$filterNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$23;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$23;->val$filterNames:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "object"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 671
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRecord()[B

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->analysisBroadcastData([BB)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {p1, v0}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setName(Ljava/lang/String;)V

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read name from broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$23;->val$filterNames:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 681
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 692
    :goto_0
    return-object v2

    .line 683
    :cond_1
    if-nez v0, :cond_2

    .line 684
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 686
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$23;->val$filterNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 688
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$23;->val$filterNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 689
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 686
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 692
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$23;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
