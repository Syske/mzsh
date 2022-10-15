.class public Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# static fields
.field public static final ACTION_GOOGLEFIT_CHANGED:Ljava/lang/String; = "ACTION_GOOGLEFIT_CHANGED"


# instance fields
.field google_fit_id:I

.field handler:Landroid/os/Handler;

.field private line_googlefit:Landroid/view/View;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private progress_bar_google_fit:Landroid/widget/ProgressBar;

.field private rl_googlefit:Landroid/widget/RelativeLayout;

.field private setting_device_name:Landroid/widget/TextView;

.field private setting_device_not_connected:Landroid/widget/TextView;

.field private setting_google_fit:Landroid/widget/CheckBox;

.field private setting_photo:Landroid/widget/ImageView;

.field private time:Landroid/widget/CheckBox;

.field private timeTw:Z

.field private tv_account:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->google_fit_id:I

    .line 307
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->time:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->progress_bar_google_fit:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;
    .param p1, "x1"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$279(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$280(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$281(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$282(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$283(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$284(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$285(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->lambda$setListener$286(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 117
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    .line 118
    .local v0, "loginUser":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->showHeadImage(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "name":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->tv_name:Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v1    # "name":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;->isPhoneLegal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->tv_account:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 129
    .restart local v2    # "str":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_4
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->tv_account:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 86
    const v2, 0x7f0e013e

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_photo:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f0e011a

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->tv_name:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0e0140

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->tv_account:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0e0143

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_device_name:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0e0144

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_device_not_connected:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f0e014b

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    .line 93
    const v2, 0x7f0e014a

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->progress_bar_google_fit:Landroid/widget/ProgressBar;

    .line 94
    const v2, 0x7f0e0149

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->rl_googlefit:Landroid/widget/RelativeLayout;

    .line 95
    const v2, 0x7f0e0148

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->line_googlefit:Landroid/view/View;

    .line 96
    const v2, 0x7f0e014c

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->time:Landroid/widget/CheckBox;

    .line 98
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->isGoogleFitEnable(Landroid/content/Context;)Z

    move-result v0

    .line 100
    .local v0, "flag":Z
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    .end local v0    # "flag":Z
    :goto_0
    const-string v2, "config"

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "checkbox_inch_time"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->timeTw:Z

    .line 108
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->timeTw:Z

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->time:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    :goto_1
    return-void

    .line 102
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->rl_googlefit:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->line_googlefit:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->time:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private synthetic lambda$setListener$279(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$280(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method private synthetic lambda$setListener$281(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 208
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    :goto_0
    return-void

    .line 212
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private synthetic lambda$setListener$282(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method private synthetic lambda$setListener$283(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private synthetic lambda$setListener$284(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method private synthetic lambda$setListener$285(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method private synthetic lambda$setListener$286(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method private setBandImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "productorname"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    const v4, 0x7f02005a

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "name":Ljava/lang/String;
    :goto_1
    const-string v1, "B521"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    :cond_1
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 167
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_1

    .line 171
    :cond_3
    const-string v1, "B522"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 173
    :cond_4
    const-string v1, "B502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    const v1, 0x7f020058

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :cond_5
    const-string v1, "B103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    const v1, 0x7f020056

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 178
    :cond_6
    const v1, 0x7f02005d

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 200
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 206
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 217
    const v0, 0x7f0e0145

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V

    .line 218
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 233
    const v0, 0x7f0e0147

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 244
    const v0, 0x7f0e0150

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 250
    const v0, 0x7f0e014e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 256
    const v0, 0x7f0e0152

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 262
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->time:Landroid/widget/CheckBox;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    return-void
.end method

.method private showHeadImage(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 4
    .param p1, "loginUser"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 184
    .local v1, "photo":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, "output":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 186
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_photo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "output":Landroid/graphics/Bitmap;
    .end local v1    # "photo":[B
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0e014b

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    .line 285
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->progress_bar_google_fit:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 286
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 287
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->google_fit_id:I

    invoke-static {p0, v0, p0}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->buildFitnessClient1(Landroid/content/Context;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 289
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->setGoogleFitEnable(Landroid/content/Context;Z)V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->progress_bar_google_fit:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->setGoogleFitEnable(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 322
    const-string v0, "google fit onConnected"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 325
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->progress_bar_google_fit:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->setGoogleFitEnable(Landroid/content/Context;Z)V

    .line 328
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 332
    const-string v0, "google fit onConnectionSuspended"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 334
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->progress_bar_google_fit:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setting_google_fit:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->initView()V

    .line 81
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->initData()V

    .line 82
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setListener()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onResume()V

    .line 299
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->initData()V

    .line 301
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->isGoogleFitEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->onConnected(Landroid/os/Bundle;)V

    .line 304
    :cond_0
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setContentView(I)V

    .line 75
    return-void
.end method
