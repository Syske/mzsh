.class Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;
.super Landroid/os/Handler;
.source "LiteBleConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/litesuits/bluetooth/conn/LiteBleConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;


# direct methods
.method private constructor <init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;->this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/LiteBleConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .param p2, "x1"    # Lcom/litesuits/bluetooth/conn/LiteBleConnector$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/litesuits/bluetooth/conn/BleCallback;

    .line 70
    .local v0, "call":Lcom/litesuits/bluetooth/conn/BleCallback;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;->this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    invoke-static {v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->access$100(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v1

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/conn/BleCallback;->getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 72
    sget-object v1, Lcom/litesuits/bluetooth/exception/BleException;->TIMEOUT_EXCEPTION:Lcom/litesuits/bluetooth/exception/TimeoutException;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/conn/BleCallback;->onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    .line 74
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    return-void
.end method
