.class public Lcom/meizu/smart/wristband/servers/TelephonyServer;
.super Ljava/lang/Object;
.source "TelephonyServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ACTION:Ljava/lang/String;


# instance fields
.field private final CASE_CALLER:I

.field private final CASE_NUMBER:I

.field private callerName:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private flag:Z

.field private handler:Landroid/os/Handler;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->flag:Z

    .line 47
    new-instance v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;-><init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 184
    iput v1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->CASE_NUMBER:I

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->CASE_CALLER:I

    .line 283
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->callerName:Ljava/util/Vector;

    .line 169
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->context:Landroid/content/Context;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->handler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/servers/TelephonyServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->flag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/servers/TelephonyServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->callerName:Ljava/util/Vector;

    return-object v0
.end method

.method private generateCallerName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 311
    .local v2, "chars":[C
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v2, v3

    .line 314
    .local v1, "c":C
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/meizu/smart/wristband/utils/MatrixUtil;->unicode2Bytes(Landroid/content/Context;I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "c":C
    :cond_0
    return-object v0
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized pushCallerName(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRequest"    # Z

    .prologue
    .line 274
    const-class v2, Lcom/meizu/smart/wristband/servers/TelephonyServer;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/smart/wristband/servers/TelephonyServer;->ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isRequest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit v2

    return-void

    .line 274
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 189
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "sendStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v4

    .line 192
    .local v4, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->flag:Z

    if-nez v5, :cond_1

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v10, :cond_1

    .line 193
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/servers/BleServer;->closeMsg()Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 270
    :cond_0
    :goto_0
    return v9

    .line 200
    :cond_1
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->flag:Z

    if-eqz v5, :cond_4

    invoke-static {v3}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    const-string v5, "1"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 202
    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 259
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->flag:Z

    if-eqz v5, :cond_0

    .line 260
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 261
    .local v2, "msg1":Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 262
    iput v10, v2, Landroid/os/Message;->arg2:I

    .line 263
    iget v5, p1, Landroid/os/Message;->what:I

    iput v5, v2, Landroid/os/Message;->what:I

    .line 264
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_3

    .line 266
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    :cond_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->handler:Landroid/os/Handler;

    const-wide/16 v6, 0x1770

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 203
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_4
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->flag:Z

    if-eqz v5, :cond_2

    .line 204
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 206
    :pswitch_0
    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 207
    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_1

    .line 210
    :pswitch_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->callerName:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 212
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6765\u7535\u63d0\u9192 \u540d\u79f0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->generateCallerName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_5

    .line 215
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->callerName:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 216
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->callerName:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->callerName:Ljava/util/Vector;

    invoke-static {v5}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/TelephonyServer$5;

    invoke-direct {v6, p0, v4}, Lcom/meizu/smart/wristband/servers/TelephonyServer$5;-><init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;Lcom/meizu/smart/wristband/servers/BleServer;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/TelephonyServer$4;

    invoke-direct {v6, p0, v4}, Lcom/meizu/smart/wristband/servers/TelephonyServer$4;-><init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;Lcom/meizu/smart/wristband/servers/BleServer;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/TelephonyServer$3;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/servers/TelephonyServer$3;-><init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;)V

    .line 240
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/TelephonyServer$2;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/servers/TelephonyServer$2;-><init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;)V

    .line 246
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 252
    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_1

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public monitorIncomingTelegram()V
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->tm:Landroid/telephony/TelephonyManager;

    .line 176
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "no phone call permission"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 281
    return-void
.end method
