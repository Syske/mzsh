.class public Lcom/meizu/smart/wristband/servers/SoundPoolServer;
.super Ljava/lang/Object;
.source "SoundPoolServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ACTION:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private flag:Z

.field private handler:Landroid/os/Handler;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private soundBeepId:I

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;-><init>(Lcom/meizu/smart/wristband/servers/SoundPoolServer;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->receiver:Landroid/content/BroadcastReceiver;

    .line 28
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->handler:Landroid/os/Handler;

    .line 30
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v2, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->soundPool:Landroid/media/SoundPool;

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/servers/SoundPoolServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/SoundPoolServer;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->flag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/servers/SoundPoolServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    .prologue
    .line 17
    iget v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->soundBeepId:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/servers/SoundPoolServer;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public static declared-synchronized play(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v2, Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v2

    return-void

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->flag:Z

    .line 35
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->context:Landroid/content/Context;

    const/high16 v3, 0x7f060000

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->soundBeepId:I

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    return-void
.end method
