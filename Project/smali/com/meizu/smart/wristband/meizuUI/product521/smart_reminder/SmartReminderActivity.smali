.class public Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SmartReminderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"


# instance fields
.field private begin_smartString:Ljava/lang/String;

.field private cb_e_mail:Landroid/widget/CheckBox;

.field private cb_facebook:Landroid/widget/CheckBox;

.field private cb_instagram:Landroid/widget/CheckBox;

.field private cb_line:Landroid/widget/CheckBox;

.field private cb_qq:Landroid/widget/CheckBox;

.field private cb_skype:Landroid/widget/CheckBox;

.field private cb_twitter:Landroid/widget/CheckBox;

.field private cb_wechart:Landroid/widget/CheckBox;

.field private cb_whatsapp:Landroid/widget/CheckBox;

.field private isEnabledNLS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->isEnabledNLS:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->openNotificationAccess()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->lambda$setListener$262(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSmartString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->begin_smartString:Ljava/lang/String;

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    .line 77
    .local v0, "split":[Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->begin_smartString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->begin_smartString:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_wechart:Landroid/widget/CheckBox;

    const-string v2, "1"

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_qq:Landroid/widget/CheckBox;

    const-string v2, "1"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_qq:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_wechart:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0e0195

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_wechart:Landroid/widget/CheckBox;

    .line 61
    const v0, 0x7f0e0197

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_qq:Landroid/widget/CheckBox;

    .line 62
    const v0, 0x7f0e0199

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_e_mail:Landroid/widget/CheckBox;

    .line 63
    const v0, 0x7f0e019c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_facebook:Landroid/widget/CheckBox;

    .line 64
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_twitter:Landroid/widget/CheckBox;

    .line 65
    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_whatsapp:Landroid/widget/CheckBox;

    .line 66
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_instagram:Landroid/widget/CheckBox;

    .line 67
    const v0, 0x7f0e01a8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_line:Landroid/widget/CheckBox;

    .line 68
    const v0, 0x7f0e01ab

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_skype:Landroid/widget/CheckBox;

    .line 71
    return-void
.end method

.method private isEnabled()Z
    .locals 7

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_notification_listeners"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 156
    aget-object v5, v3, v2

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 157
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    const/4 v5, 0x1

    .line 164
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :goto_1
    return v5

    .line 155
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "i":I
    .restart local v3    # "names":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private synthetic lambda$setListener$262(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->save()V

    return-void
.end method

.method private openNotificationAccess()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method private save()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->finish()V

    .line 122
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 98
    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u8bf7\u5141\u8bb8\u901a\u77e5\u680f\u6743\u9650"

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u901a\u77e5\u680f\u6743\u9650"

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;)V

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;)V

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onBackPressed()V

    .line 104
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->save()V

    .line 105
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_wechart:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_qq:Landroid/widget/CheckBox;

    .line 170
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_e_mail:Landroid/widget/CheckBox;

    .line 171
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_facebook:Landroid/widget/CheckBox;

    .line 172
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_twitter:Landroid/widget/CheckBox;

    .line 173
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_whatsapp:Landroid/widget/CheckBox;

    .line 174
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_instagram:Landroid/widget/CheckBox;

    .line 175
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_line:Landroid/widget/CheckBox;

    .line 176
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->cb_skype:Landroid/widget/CheckBox;

    .line 177
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "end_smartString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smart string  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 183
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v1, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 185
    return-void

    .line 169
    .end local v0    # "end_smartString":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto/16 :goto_0

    .line 170
    :cond_1
    const-string v1, "0"

    goto/16 :goto_1

    .line 171
    :cond_2
    const-string v1, "0"

    goto/16 :goto_2

    .line 172
    :cond_3
    const-string v1, "0"

    goto/16 :goto_3

    .line 173
    :cond_4
    const-string v1, "0"

    goto/16 :goto_4

    .line 174
    :cond_5
    const-string v1, "0"

    goto :goto_5

    .line 175
    :cond_6
    const-string v1, "0"

    goto :goto_6

    .line 176
    :cond_7
    const-string v1, "0"

    goto :goto_7

    .line 177
    :cond_8
    const-string v1, "0"

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->initView()V

    .line 44
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->initData()V

    .line 45
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->setListener()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onResume()V

    .line 51
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->isEnabledNLS:Z

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnabledNLS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->isEnabledNLS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->isEnabledNLS:Z

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->showConfirmDialog()V

    .line 56
    :cond_0
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;->setContentView(I)V

    .line 38
    return-void
.end method
