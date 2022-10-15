.class public Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;,
        Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;
    }
.end annotation


# static fields
.field private static cmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;",
            ">;"
        }
    .end annotation
.end field

.field static currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

.field static handler:Landroid/os/Handler;

.field static notifyMessage:Ljava/lang/String;


# instance fields
.field bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field context:Landroid/content/Context;

.field liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->handler:Landroid/os/Handler;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/litesuits/bluetooth/LiteBluetooth;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "liteBluetooth"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    .line 45
    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 275
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->context:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->handler:Landroid/os/Handler;

    .line 279
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$7;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->addGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    .param p2, "x2"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->writeDate(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->isNotifyMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->boradCastNotifyMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized addBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 5
    .param p0, "cmd"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .prologue
    .line 98
    const-class v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 \u6dfb\u52a0\u6307\u4ee4 id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 \u6dfb\u52a0\u6307\u4ee4 id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    monitor-exit v1

    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private boradCastNotifyMessage()Z
    .locals 3

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boradCastNotifyMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_notify_message"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "broadcast_notify_message_data"

    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    const-string v1, ""

    sput-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    .line 53
    const/4 v1, 0x1

    return v1
.end method

.method public static declared-synchronized clearBleCmd()V
    .locals 7

    .prologue
    .line 162
    const-class v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "\u6e05\u7a7a\u6307\u4ee4\u5217\u8868"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "cmd":Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmd":Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    check-cast v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 165
    .restart local v0    # "cmd":Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6e05\u7a7a\u6307\u4ee4\u5217\u8868 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 166
    iget-object v4, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 168
    :cond_0
    :try_start_3
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 169
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 170
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->handler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized deleteBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 7
    .param p0, "cmd"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .prologue
    .line 134
    const-class v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5220\u9664\u6307\u4ee4 id ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v4, v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    const-string v5, "\r\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 135
    sget-object v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    invoke-interface {v2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onComplate()V

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "delete_cmd":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 140
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->id:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->id:Ljava/lang/Integer;

    if-ne v2, v5, :cond_2

    .line 141
    const/4 v0, 0x1

    .line 145
    :cond_0
    if-eqz v0, :cond_1

    .line 146
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 153
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit v3

    return-void

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "delete_cmd":Z
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized deleteCurrent()V
    .locals 7

    .prologue
    .line 108
    const-class v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 131
    .local v0, "delete_cmd":Z
    .local v1, "i":I
    .local v2, "log":Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-void

    .line 111
    .end local v0    # "delete_cmd":Z
    .end local v1    # "i":I
    .end local v2    # "log":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    const-string v5, "\r\n"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "log":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 delete id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 113
    sget-object v5, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    invoke-interface {v3}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onComplate()V

    .line 115
    const/4 v0, 0x0

    .line 116
    .restart local v0    # "delete_cmd":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 117
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->id:Ljava/lang/Integer;

    sget-object v6, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v6, v6, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->id:Ljava/lang/Integer;

    if-ne v3, v6, :cond_3

    .line 119
    const/4 v0, 0x1

    .line 123
    :cond_1
    if-eqz v0, :cond_2

    .line 124
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    sget-object v6, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    const/4 v3, 0x0

    sput-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 127
    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->handler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 delete id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "delete_cmd":Z
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 116
    .restart local v0    # "delete_cmd":Z
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "delete_cmd":Z
    .end local v1    # "i":I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized getCurrent()Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    .locals 2

    .prologue
    .line 157
    const-class v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isNotifyMessage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 59
    const-string v1, "NT+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    const-string v2, "NT+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nt+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    const-string v2, "nt+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " str = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->notifyMessage:Ljava/lang/String;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 70
    :cond_1
    return v0
.end method

.method private sendCharacteristicBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 4
    .param p1, "cmd"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .prologue
    .line 195
    move-object v1, p1

    .line 196
    .local v1, "req":Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    iget-object v2, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->buffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x13

    div-int/lit8 v0, v2, 0x14

    .line 198
    .local v0, "packageNum":I
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lrx/Observable;->range(II)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$4;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$4;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;)V

    .line 206
    invoke-virtual {v2, v3}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$3;

    invoke-direct {v3, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$3;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    .line 211
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;

    invoke-direct {v3, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    .line 216
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 221
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 222
    return-void
.end method

.method private sendDescriptorValue(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 5
    .param p1, "cmd"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .prologue
    .line 176
    move-object v1, p1

    .line 177
    .local v1, "req":Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->newBleConnector()Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    move-result-object v0

    .line 178
    .local v0, "connector":Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    iget-object v2, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->serverUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->charReadUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->descriptorUUID:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .line 179
    iget-object v2, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->buffer:[B

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;

    invoke-direct {v3, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    invoke-virtual {v0, v2, v3}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->writeDescriptor([BLcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z

    .line 192
    return-void
.end method

.method private writeDate(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)Lrx/Observable;
    .locals 2
    .param p1, "cmd"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;",
            "[B)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 249
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 76
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 77
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 begin to wirte cmdQueue.size() =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    if-nez v1, :cond_0

    .line 80
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->cmdQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    sput-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2 begin to wirte id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->descriptorUUID:Ljava/util/UUID;

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->sendDescriptorValue(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_1
    return v6

    .line 86
    :cond_2
    :try_start_3
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->sendCharacteristicBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
