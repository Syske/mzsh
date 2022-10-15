.class public Lcom/meizu/smart/wristband/servers/MusicControlService;
.super Landroid/app/Service;
.source "MusicControlService.java"


# static fields
.field public static DESAY_ACTION_MUSIC_IS_PLAYING:Ljava/lang/String;

.field public static DESAY_ACTION_MUSIC_NEXT:Ljava/lang/String;

.field public static DESAY_ACTION_MUSIC_PAUSE:Ljava/lang/String;

.field public static DESAY_ACTION_MUSIC_PLAY:Ljava/lang/String;

.field public static DESAY_ACTION_MUSIC_PREVIOUS:Ljava/lang/String;


# instance fields
.field private isMusicPlaying:Z

.field private mBleServer:Lcom/meizu/smart/wristband/servers/BleServer;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "desay.play"

    sput-object v0, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PLAY:Ljava/lang/String;

    .line 22
    const-string v0, "desay.pause"

    sput-object v0, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PAUSE:Ljava/lang/String;

    .line 23
    const-string v0, "desay.next"

    sput-object v0, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_NEXT:Ljava/lang/String;

    .line 24
    const-string v0, "desay.previous"

    sput-object v0, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PREVIOUS:Ljava/lang/String;

    .line 25
    const-string v0, "com.android.music.playstatechanged"

    sput-object v0, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_IS_PLAYING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->isMusicPlaying:Z

    .line 36
    new-instance v0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/MusicControlService$1;-><init>(Lcom/meizu/smart/wristband/servers/MusicControlService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/servers/MusicControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/MusicControlService;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->isMusicPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/servers/MusicControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/MusicControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->isMusicPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/servers/MusicControlService;)Lcom/meizu/smart/wristband/servers/BleServer;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/MusicControlService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mBleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/servers/MusicControlService;Lcom/meizu/smart/wristband/servers/BleServer;)Lcom/meizu/smart/wristband/servers/BleServer;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/MusicControlService;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/servers/BleServer;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mBleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/servers/MusicControlService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/MusicControlService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 118
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/servers/MusicControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 119
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    iput-object p0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_NEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PREVIOUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_IS_PLAYING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/smart/wristband/servers/MusicControlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "wxf_music"

    const-string v2, "registerReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/MusicControlService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/MusicControlService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const-string/jumbo v0, "wxf_music"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public sendMusicKeyEvent(I)Z
    .locals 9
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 110
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    move-wide v4, v2

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 111
    .local v1, "key":Landroid/view/KeyEvent;
    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/servers/MusicControlService;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V

    .line 112
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/servers/MusicControlService;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V

    .line 114
    return v6
.end method
