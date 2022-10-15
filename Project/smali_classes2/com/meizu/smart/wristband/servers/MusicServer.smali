.class public Lcom/meizu/smart/wristband/servers/MusicServer;
.super Ljava/lang/Object;
.source "MusicServer.java"


# static fields
.field private static final CMDNEXT:Ljava/lang/String; = "next"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final CMDPLAY:Ljava/lang/String; = "play"

.field private static final CMDPREVIOUS:Ljava/lang/String; = "previous"


# instance fields
.field private context:Landroid/content/Context;

.field private subsciption:Lrx/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$lambda$0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/MusicServer;->lambda$startServer$182(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/servers/MusicServer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/MusicServer;->lambda$startServer$183(Ljava/lang/String;)V

    return-void
.end method

.method private handlerMusicNotify(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "NT+MUSIC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getMusicString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    .local v0, "musicFlag":I
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "NT+MUSICON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/MusicServer;->musicOn()V

    goto :goto_0

    .line 66
    :cond_2
    const-string v1, "NT+MUSICOFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/MusicServer;->musicOff()V

    goto :goto_0

    .line 68
    :cond_3
    const-string v1, "NT+MUSICPAUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/MusicServer;->musicPause()V

    goto :goto_0

    .line 70
    :cond_4
    const-string v1, "NT+MUSICNEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/MusicServer;->musicNext()V

    goto :goto_0

    .line 72
    :cond_5
    const-string v1, "NT+MUSICPRE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/MusicServer;->musicPre()V

    goto :goto_0
.end method

.method private static synthetic lambda$startServer$182(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v0, "broadcast_notify_message_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$startServer$183(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/MusicServer;->handlerMusicNotify(Ljava/lang/String;)V

    return-void
.end method

.method private musicNext()V
    .locals 2

    .prologue
    .line 83
    const-string v1, "music : next"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_NEXT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method private musicOff()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method private musicOn()V
    .locals 2

    .prologue
    .line 102
    const-string v1, "music : play"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PLAY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method private musicPause()V
    .locals 2

    .prologue
    .line 89
    const-string v1, "music : pause"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PAUSE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method private musicPre()V
    .locals 2

    .prologue
    .line 77
    const-string v1, "music : previous"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PREVIOUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method


# virtual methods
.method public startServer()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->subsciption:Lrx/Subscription;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->subsciption:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 35
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "broadcast_notify_message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/servers/MusicServer$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/MusicServer$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/MusicServer;)Lrx/functions/Action1;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 40
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->subsciption:Lrx/Subscription;

    .line 41
    return-void
.end method

.method public stopServer()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/MusicServer;->subsciption:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 45
    return-void
.end method
