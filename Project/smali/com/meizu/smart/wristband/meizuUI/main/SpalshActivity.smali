.class public Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;
.super Landroid/app/Activity;
.source "SpalshActivity.java"


# instance fields
.field private final DELAY:I

.field private VERSION_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->DELAY:I

    .line 27
    const-string v0, "VERSION"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->VERSION_KEY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->initGuideActivity()V

    return-void
.end method

.method private gotoNext()V
    .locals 3

    .prologue
    .line 82
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 83
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-nez v1, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :goto_0
    return-void

    .line 86
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getIsEmpty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initGuideActivity()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 56
    const/4 v2, 0x0

    .line 58
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :goto_0
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 63
    .local v0, "currentVersion":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 64
    .local v4, "prefs":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->VERSION_KEY:Ljava/lang/String;

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, "lastVersion":I
    if-le v0, v3, :cond_0

    .line 69
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->VERSION_KEY:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->finish()V

    .line 78
    return-void

    .line 59
    .end local v0    # "currentVersion":I
    .end local v3    # "lastVersion":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "currentVersion":I
    .restart local v3    # "lastVersion":I
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->gotoNext()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->setContentView(I)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
