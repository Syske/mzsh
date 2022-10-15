.class public Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;
.super Landroid/os/AsyncTask;
.source "DeviceConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/bluetooth/BluetoothGatt;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceGattTask"


# instance fields
.field private final callback:Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;

.field public context:Landroid/content/Context;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    new-instance v1, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;-><init>(Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->callback:Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;

    .line 29
    const-string v1, "DeviceGattTask"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    .line 31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "tmp":Landroid/bluetooth/BluetoothSocket;
    iput-object p2, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 39
    :try_start_0
    sget-object v1, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 43
    return-void

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 58
    move-object v1, p1

    .line 59
    .local v1, "localBluetoothGatt":Landroid/bluetooth/BluetoothGatt;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "refresh"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 60
    .local v3, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 61
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 68
    .end local v3    # "localMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "localException":Ljava/lang/Exception;
    const-string v4, "DeviceGattTask"

    const-string v5, "An exception occured while refreshing device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->callback:Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 74
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 75
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 76
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 103
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->cancel()V

    .line 104
    return-void
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->cancel()V

    .line 98
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 82
    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "values"    # [Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, [Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public publishProgess(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->publishProgress([Ljava/lang/Object;)V

    .line 109
    return-void
.end method
