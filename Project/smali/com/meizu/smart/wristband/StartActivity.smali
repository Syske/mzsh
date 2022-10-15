.class public Lcom/meizu/smart/wristband/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"


# static fields
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final TAG:Ljava/lang/String;

.field public static quit_flag:Ljava/lang/Boolean;


# instance fields
.field private bRunSplash:Z

.field private exitReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/meizu/smart/wristband/StartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/StartActivity;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/StartActivity;->bRunSplash:Z

    .line 96
    new-instance v0, Lcom/meizu/smart/wristband/StartActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/StartActivity$1;-><init>(Lcom/meizu/smart/wristband/StartActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/StartActivity;->exitReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private gotoNext()V
    .locals 3

    .prologue
    .line 161
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/StartActivity;->bRunSplash:Z

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/StartActivity;->bRunSplash:Z

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    :goto_0
    return-void

    .line 166
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;
      
    move-result-object v1

    .line 167
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-nez v1, :cond_1
    const-string v2, "13572465548"
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V
    invoke-virtual {v1, v2, v2}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;-><init>()V
    invoke-virtual {v1, p0, v2, v0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Z

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getIsEmpty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/StartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_notification_listeners"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 128
    aget-object v5, v3, v2

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 129
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    const/4 v5, 0x1

    .line 136
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :goto_1
    return v5

    .line 127
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "i":I
    .restart local v3    # "names":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private requestMultiplePermissions()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_5

    .line 184
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/StartActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 185
    .local v0, "b1":Z
    :goto_0
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/StartActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 186
    .local v1, "b2":Z
    :goto_1
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/StartActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 195
    .local v2, "b3":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_4

    .line 196
    :cond_0
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "android.permission.READ_PHONE_STATE"

    aput-object v6, v3, v5

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    .line 197
    .local v3, "permissions":[Ljava/lang/String;
    const/16 v4, 0x7d0

    invoke-virtual {p0, v3, v4}, Lcom/meizu/smart/wristband/StartActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 206
    .end local v0    # "b1":Z
    .end local v1    # "b2":Z
    .end local v2    # "b3":Z
    .end local v3    # "permissions":[Ljava/lang/String;
    :goto_3
    return-void

    :cond_1
    move v0, v5

    .line 184
    goto :goto_0

    .restart local v0    # "b1":Z
    :cond_2
    move v1, v5

    .line 185
    goto :goto_1

    .restart local v1    # "b2":Z
    :cond_3
    move v2, v5

    .line 186
    goto :goto_2

    .line 199
    .restart local v2    # "b3":Z
    :cond_4
    invoke-static {}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->getInstance()Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    move-result-object v4

    const-string v5, "meizu/log/"

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSdCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->start(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->gotoNext()V

    goto :goto_3

    .line 203
    .end local v0    # "b1":Z
    .end local v1    # "b2":Z
    .end local v2    # "b3":Z
    :cond_5
    invoke-static {}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->getInstance()Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    move-result-object v4

    const-string v5, "meizu/log/"

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSdCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->start(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->gotoNext()V

    goto :goto_3
.end method

.method private showVersionInfo()V
    .locals 3

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ldolphin/tools/util/AppUtil;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ldolphin/tools/util/AppUtil;->getVerCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "verTip":Ljava/lang/String;
    const-string v1, "################################################################"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 84
    const-string v1, "#                                                              #"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#   VersionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ldolphin/tools/util/AppUtil;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                                 #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#   VersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ldolphin/tools/util/AppUtil;->getVerCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                                           #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 87
    sget-boolean v1, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "#   \u6211\u662f\u6b63\u5f0f\u5e73\u53f0                                                 #"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 92
    :goto_0
    const-string v1, "#                                                              #"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 93
    const-string v1, "################################################################"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 94
    return-void

    .line 90
    :cond_0
    const-string v1, "#   \u6211\u662f\u6d4b\u8bd5\u5e73\u53f0                                                 #"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 235
    return-void
.end method

.method public isNotificationEnabled(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const-string v9, "appops"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 262
    .local v4, "mAppOps":Landroid/app/AppOpsManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 263
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "pkg":Ljava/lang/String;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 266
    .local v7, "uid":I
    const/4 v1, 0x0

    .line 269
    .local v1, "appOpsClass":Ljava/lang/Class;
    :try_start_0
    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 270
    const-string v9, "checkOpNoThrow"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    .line 271
    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 277
    .local v2, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string v9, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 278
    .local v5, "opPostNotificationValue":Ljava/lang/reflect/Field;
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 280
    .local v8, "value":I
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 281
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-virtual {v2, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    .line 295
    .end local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v8    # "value":I
    :goto_0
    return v9

    .line 281
    .restart local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .restart local v8    # "value":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 284
    .end local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v8    # "value":I
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 295
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 286
    :catch_1
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 290
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v3

    .line 291
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 292
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 293
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public isNotificationListenerActived()Z
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/StartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.meizu.smart.wristband/com.meizu.smart.wristband.servers.NotificationReceiverService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 229
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/meizu/smart/wristband/Exit;->getInstance()Lcom/meizu/smart/wristband/Exit;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/meizu/smart/wristband/Exit;->addActivity(Landroid/app/Activity;)V

    .line 51
    const v2, 0x7f040024

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/StartActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->showVersionInfo()V

    .line 54
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bShowSplash"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/StartActivity;->bRunSplash:Z

    .line 56
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->requestMultiplePermissions()V

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/meizu/smart/wristband/StartActivity;->exitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/meizu/smart/wristband/StartActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/StartActivity;->isNotificationListenerActived()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotificationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p0}, Lcom/meizu/smart/wristband/StartActivity;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 251
    invoke-static {}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->getInstance()Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->stop()V

    .line 253
    iget-object v0, p0, Lcom/meizu/smart/wristband/StartActivity;->exitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/StartActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 153
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getUnit(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->gotoNext()V

    .line 157
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 211
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_1

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 213
    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->requestMultiplePermissions()V

    .line 215
    const v1, 0x7f080215

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    .line 224
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 212
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/StartActivity;->gotoNext()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    sget-object v0, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/StartActivity;->finish()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 241
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 246
    return-void
.end method
