.class public Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "ProductActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_UNBUND:Ljava/lang/String; = "action_UNBUND"

.field public static final BAND_HEARTRATE_AUTO:Ljava/lang/String; = "1"

.field public static final BAND_HEARTRATE_MANUAL:Ljava/lang/String; = "0"

.field public static final BAND_TIMEDISPLAY_DATE:Ljava/lang/String; = "1"

.field public static final BAND_TIMEDISPLAY_TIME:Ljava/lang/String; = "0"

.field public static final BAND_UP_CLOSE:Ljava/lang/String; = "0"

.field public static final BAND_UP_LEFT:Ljava/lang/String; = "2"

.field public static final BAND_UP_RIGHT:Ljava/lang/String; = "3"

.field public static final BAND_VIBRATE_HIGH:Ljava/lang/String; = "4"

.field public static final BAND_VIBRATE_LOW:Ljava/lang/String; = "2"

.field public static final BAND_VIBRATE_MID:Ljava/lang/String; = "3"

.field private static final REQUEST_PHONE_PERMISSION:I = 0x65

.field private static final REQUEST_SMS_PERMISSION:I = 0x64


# instance fields
.field private final REQUESTCODE_DATEDISPLAY:I

.field private final REQUESTCODE_HANDUP:I

.field private final REQUESTCODE_HEARTRATE:I

.field private final REQUESTCODE_LONGSIT:I

.field private final REQUESTCODE_SMART:I

.field private final REQUESTCODE_VIBRATE:I

.field private bCheckContacts:Z

.field private bCheckSms:Z

.field private bCheckSms1:Z

.field private begin_state_ant_lost:Z

.field private begin_state_find_phone:Z

.field private begin_state_goal:Z

.field private begin_state_music:Z

.field private begin_state_remind:Z

.field private begin_state_sms:Z

.field private cb_ant_lost:Landroid/widget/CheckBox;

.field private cb_find_phone:Landroid/widget/CheckBox;

.field private cb_goal:Landroid/widget/CheckBox;

.field private cb_music:Landroid/widget/CheckBox;

.field private cb_remind:Landroid/widget/CheckBox;

.field private cb_sms:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

.field private off:Landroid/widget/RelativeLayout;

.field private rl_ant_lost:Landroid/widget/RelativeLayout;

.field private rl_call:Landroid/widget/RelativeLayout;

.field private rl_find_phone:Landroid/widget/RelativeLayout;

.field private rl_goal:Landroid/widget/RelativeLayout;

.field private rl_heart_rate:Landroid/widget/RelativeLayout;

.field private rl_long_sit:Landroid/widget/RelativeLayout;

.field private rl_smart:Landroid/widget/RelativeLayout;

.field private rl_sms:Landroid/widget/RelativeLayout;

.field private rl_time:Landroid/widget/RelativeLayout;

.field private rl_unbind:Landroid/widget/RelativeLayout;

.field private rl_use_hand:Landroid/widget/RelativeLayout;

.field private rl_vibrate:Landroid/widget/RelativeLayout;

.field private tv_heart_rate:Landroid/widget/TextView;

.field private tv_long_sit_remind:Landroid/widget/TextView;

.field private tv_power:Landroid/widget/TextView;

.field private tv_remind_state:Landroid/widget/TextView;

.field private tv_sn:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_use_hand:Landroid/widget/TextView;

.field private tv_version:Landroid/widget/TextView;

.field private tv_vibrate_intensity:Landroid/widget/TextView;

.field private update:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->bCheckSms:Z

    .line 116
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->bCheckContacts:Z

    .line 117
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->bCheckSms1:Z

    .line 120
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->REQUESTCODE_HANDUP:I

    .line 121
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->REQUESTCODE_SMART:I

    .line 122
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->REQUESTCODE_LONGSIT:I

    .line 123
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->REQUESTCODE_HEARTRATE:I

    .line 124
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->REQUESTCODE_VIBRATE:I

    .line 125
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->REQUESTCODE_DATEDISPLAY:I

    return-void
.end method

.method private CheckPhonePermisson()V
    .locals 3

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "01"

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 1153
    :goto_1
    return-void

    .line 1149
    :cond_0
    const-string v0, "00"

    goto :goto_0

    .line 1151
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private CheckSmsPermisson()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1129
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SMS"

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    const-string v6, "content://sms/inbox"

    .line 1131
    .local v6, "SMS_INBOX":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1132
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v2, v5

    const-string v0, "date"

    aput-object v0, v2, v8

    .line 1133
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1134
    .local v7, "cur":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1135
    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "01"

    :goto_0
    invoke-static {p0, v3, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 1139
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "SMS_INBOX":Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 1135
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "SMS_INBOX":Ljava/lang/String;
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_0
    const-string v0, "00"

    goto :goto_0

    .line 1137
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "SMS_INBOX":Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_1
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v0, v5

    const/16 v3, 0x64

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->forceToOTADialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->CheckSmsPermisson()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->forceToOTA()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->CheckPhonePermisson()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_goal:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_find_phone:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->unbind()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$initData$237(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$238(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$247(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$248(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$249(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$250(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$251(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$15(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$252(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$16(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$253(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$17(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$254(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$18(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$255(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$19(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$showUpgradeDialog$256(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$239(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$20(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$showUpgradeDialog$259(Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$21(Lcom/meizu/smart/wristband/servers/BleServer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$sendToDevice$260(Lcom/meizu/smart/wristband/servers/BleServer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$22(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Long;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$findBand$261(Ljava/lang/Long;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$23(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$null$257(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$24(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$null$258(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$240(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$241(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Void;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$242(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Void;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$243(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$244(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$245(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Void;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->lambda$setListener$246(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Void;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private findBand()V
    .locals 3

    .prologue
    .line 1016
    const-wide/16 v0, 0x5dc

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x4

    .line 1017
    invoke-virtual {v0, v1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$23;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 1019
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1020
    return-void
.end method

.method private forceToOTA()V
    .locals 6

    .prologue
    .line 937
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    if-nez v3, :cond_1

    .line 939
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 940
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    const-string v4, "B521"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string v3, "device_mac"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v3, "device_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    const-string v3, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 949
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 951
    :try_start_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 952
    .restart local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 953
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string v3, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string v3, "device_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 956
    const-string v3, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 958
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 959
    .restart local v0    # "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 961
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    :try_start_2
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 964
    .restart local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 965
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-string v3, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    const-string v3, "device_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    const-string v3, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 970
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 971
    .restart local v0    # "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private forceToOTADialog()V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Firmware update"

    .line 780
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Do you want to upgrade a device already in OTA mode?"

    .line 781
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "no"

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$12;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 782
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "yes"

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$11;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 787
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 795
    return-void
.end method

.method private gotoLocalOTA()V
    .locals 6

    .prologue
    .line 911
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 914
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 915
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const-string v3, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v3, "filepath"

    const-string v4, "/meizu/upgrade/B52_LOCAL.zip"

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSdCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 922
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    :try_start_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 925
    .restart local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 926
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string v3, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string v3, "filepath"

    const-string v4, "/meizu/upgrade/B103_LOCAL.img"

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSdCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 930
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 931
    .restart local v0    # "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private gotoOTA()V
    .locals 6

    .prologue
    .line 978
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    if-nez v3, :cond_1

    .line 980
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 981
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 982
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    const-string v4, "B521"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v3, "device_mac"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v3, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 989
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 991
    :try_start_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 992
    .restart local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 993
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string v3, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string v3, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 997
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 998
    .restart local v0    # "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 1000
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1002
    :try_start_2
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 1003
    .restart local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1004
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    const-string v3, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    const-string v3, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1008
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 1009
    .restart local v0    # "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 239
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .line 240
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    if-eqz v8, :cond_3

    .line 241
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_power:Landroid/widget/TextView;

    const-string/jumbo v9, "\u83b7\u53d6\u4e2d"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v5

    .line 243
    .local v5, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v8

    if-nez v8, :cond_0

    .line 244
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_power:Landroid/widget/TextView;

    const-string/jumbo v9, "\u672a\u8fde\u63a5"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/servers/BleServer;->getPower()Lrx/Observable;

    move-result-object v8

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v8

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v9

    .line 249
    invoke-virtual {v8, v9}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v8

    new-instance v9, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v9}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 250
    invoke-virtual {v8, v9}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 254
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getNordicVersion()Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "ver":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 256
    const-string v7, "000"

    .line 258
    :cond_1
    const-string v8, "%s.%s.%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 259
    sget-boolean v8, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    if-nez v8, :cond_2

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getCoreVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_2
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_version:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .end local v5    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    .end local v7    # "ver":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getGoalRemindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "goalRemind":Ljava/lang/String;
    const-string v8, "01"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 268
    :cond_4
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_goal:Landroid/widget/CheckBox;

    invoke-virtual {v8, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 269
    iput-boolean v12, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_goal:Z

    .line 276
    :goto_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getAlertCallString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "alertCallString":Ljava/lang/String;
    const-string v8, "01"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 278
    :cond_5
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    invoke-virtual {v8, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    iput-boolean v12, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_remind:Z

    .line 286
    :goto_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getAlertSmsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "alertSmsString":Ljava/lang/String;
    const-string v8, "01"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "1"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 288
    :cond_6
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    invoke-virtual {v8, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    iput-boolean v12, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_sms:Z

    .line 297
    :goto_2
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getFindPhoneString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "findphoneString":Ljava/lang/String;
    const-string v8, "01"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 299
    :cond_7
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_find_phone:Landroid/widget/CheckBox;

    invoke-virtual {v8, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    iput-boolean v12, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_find_phone:Z

    .line 308
    :goto_3
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setHandUpTime()V

    .line 311
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSmartString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "smartRemind":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_remind_state:Landroid/widget/TextView;

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x7f080208

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setLongSit()V

    .line 319
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setHearRateMonitor()V

    .line 322
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getVibrationIntensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "VibrateString":Ljava/lang/String;
    const-string v8, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 324
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    const v9, 0x7f08018e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 332
    :goto_5
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setTimeDisplay()V

    .line 335
    return-void

    .line 271
    .end local v0    # "VibrateString":Ljava/lang/String;
    .end local v1    # "alertCallString":Ljava/lang/String;
    .end local v2    # "alertSmsString":Ljava/lang/String;
    .end local v3    # "findphoneString":Ljava/lang/String;
    .end local v6    # "smartRemind":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_goal:Landroid/widget/CheckBox;

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    iput-boolean v11, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_goal:Z

    goto/16 :goto_0

    .line 281
    .restart local v1    # "alertCallString":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 282
    iput-boolean v11, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_remind:Z

    goto :goto_1

    .line 291
    .restart local v2    # "alertSmsString":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iput-boolean v11, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_sms:Z

    goto :goto_2

    .line 302
    .restart local v3    # "findphoneString":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_find_phone:Landroid/widget/CheckBox;

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 303
    iput-boolean v11, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->begin_state_find_phone:Z

    goto :goto_3

    .line 312
    .restart local v6    # "smartRemind":Ljava/lang/String;
    :cond_c
    const v8, 0x7f080206

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 325
    .restart local v0    # "VibrateString":Ljava/lang/String;
    :cond_d
    const-string v8, "4"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 326
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    const v9, 0x7f08012e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 328
    :cond_e
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    const v9, 0x7f08019d

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x7f0e010e

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 163
    const v1, 0x7f0e00e1

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_power:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f0e00e6

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_goal:Landroid/widget/RelativeLayout;

    .line 167
    const v1, 0x7f0e00e7

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_goal:Landroid/widget/CheckBox;

    .line 170
    const v1, 0x7f0e00e8

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_call:Landroid/widget/RelativeLayout;

    .line 171
    const v1, 0x7f0e00ea

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    .line 174
    const v1, 0x7f0e00eb

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_sms:Landroid/widget/RelativeLayout;

    .line 175
    const v1, 0x7f0e00ec

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    .line 178
    const v1, 0x7f0e00ef

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_find_phone:Landroid/widget/RelativeLayout;

    .line 179
    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_find_phone:Landroid/widget/CheckBox;

    .line 182
    const v1, 0x7f0e00f3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_use_hand:Landroid/widget/RelativeLayout;

    .line 183
    const v1, 0x7f0e00f4

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_use_hand:Landroid/widget/TextView;

    .line 186
    const v1, 0x7f0e00f5

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_smart:Landroid/widget/RelativeLayout;

    .line 187
    const v1, 0x7f0e00f6

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_remind_state:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_long_sit:Landroid/widget/RelativeLayout;

    .line 191
    const v1, 0x7f0e00f9

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_long_sit_remind:Landroid/widget/TextView;

    .line 194
    const v1, 0x7f0e00fa

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_heart_rate:Landroid/widget/RelativeLayout;

    .line 195
    const v1, 0x7f0e00fb

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_heart_rate:Landroid/widget/TextView;

    .line 198
    const v1, 0x7f0e00fd

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_vibrate:Landroid/widget/RelativeLayout;

    .line 199
    const v1, 0x7f0e00fe

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    .line 202
    const v1, 0x7f0e0103

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_time:Landroid/widget/RelativeLayout;

    .line 203
    const v1, 0x7f0e0104

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_time:Landroid/widget/TextView;

    .line 206
    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->update:Landroid/widget/RelativeLayout;

    .line 207
    const v1, 0x7f0e0106

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_version:Landroid/widget/TextView;

    .line 210
    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->off:Landroid/widget/RelativeLayout;

    .line 213
    sget-boolean v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    .line 214
    .local v0, "bol":Z
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const/4 v0, 0x1

    .line 216
    const v1, 0x7f0e010b

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v1, 0x7f0e010c

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_sn:Landroid/widget/TextView;

    .line 222
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .line 223
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_sn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getDeviceSn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    const v1, 0x7f0e0110

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_unbind:Landroid/widget/RelativeLayout;

    .line 230
    return-void

    :cond_1
    move v1, v3

    .line 214
    goto :goto_0

    :cond_2
    move v1, v3

    .line 216
    goto :goto_1

    :cond_3
    move v2, v3

    .line 217
    goto :goto_2
.end method

.method private synthetic lambda$findBand$261(Ljava/lang/Long;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Long;

    .prologue
    .line 1018
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->locatingBand()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$initData$237(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_power:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$null$257(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->gotoOTA()V

    return-void
.end method

.method private synthetic lambda$null$258(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->forceToOTADialog()V

    return-void
.end method

.method private static synthetic lambda$sendToDevice$260(Lcom/meizu/smart/wristband/servers/BleServer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "BleServer"    # Ljava/lang/Object;

    .prologue
    .line 829
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$setListener$238(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 459
    return-void
.end method

.method private synthetic lambda$setListener$239(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method private synthetic lambda$setListener$240(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 475
    return-void
.end method

.method private synthetic lambda$setListener$241(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 482
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->uploadSettings(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 483
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->finish()V

    .line 484
    return-void
.end method

.method private synthetic lambda$setListener$242(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Void;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Void;

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setListener$243(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 519
    return-object p0
.end method

.method private static synthetic lambda$setListener$244(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 520
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method private synthetic lambda$setListener$245(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->showUpgradeDialog(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-void
.end method

.method private synthetic lambda$setListener$246(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Void;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Void;

    .prologue
    .line 534
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$247(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 535
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$248(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->gotoLocalOTA()V

    return-void
.end method

.method private synthetic lambda$setListener$249(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->gotoLocalOTA()V

    return-void
.end method

.method private synthetic lambda$setListener$250(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->showUnBindDlg()V

    .line 550
    return-void
.end method

.method private synthetic lambda$setListener$251(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->showOffDlg()V

    .line 557
    return-void
.end method

.method private synthetic lambda$setListener$252(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 562
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/smart_reminder/SmartReminderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 564
    return-void
.end method

.method private synthetic lambda$setListener$253(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 571
    return-void
.end method

.method private synthetic lambda$setListener$254(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 576
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/DateAndTimeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
    return-void
.end method

.method private synthetic lambda$setListener$255(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 585
    return-void
.end method

.method private static synthetic lambda$showUpgradeDialog$256(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "Void"    # Landroid/view/View;

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showUpgradeDialog$259(Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Landroid/view/View;)V
    .locals 2
    .param p3, "Void"    # Landroid/view/View;

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 655
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/servers/BleServer;->prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$24;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$25;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 658
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 659
    return-void
.end method

.method private requestMultiplePermissions()V
    .locals 3

    .prologue
    .line 1025
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1026
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    .line 1027
    .local v0, "permissions":[Ljava/lang/String;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1031
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/utils/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->takePhoto()V

    goto :goto_0
.end method

.method private sendToDevice()V
    .locals 7

    .prologue
    .line 809
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v2

    .line 813
    .local v2, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v1

    .line 814
    .local v1, "mDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    const/4 v4, 0x0

    .line 815
    .local v4, "verCode":I
    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getCoreVersion()Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "ver":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 822
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 826
    .end local v3    # "ver":Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 827
    .local v0, "finalVerCode":I
    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$22;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;)Lrx/functions/Func1;

    move-result-object v6

    .line 828
    invoke-virtual {v5, v6}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$18;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/servers/BleServer;)V

    .line 832
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$17;

    invoke-direct {v6, p0, v0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$17;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;ILcom/meizu/smart/wristband/servers/BleServer;)V

    .line 845
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$16;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$16;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/servers/BleServer;)V

    .line 857
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$15;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/servers/BleServer;)V

    .line 865
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;

    invoke-direct {v6, p0, v0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$14;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;ILcom/meizu/smart/wristband/servers/BleServer;)V

    .line 881
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$13;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$13;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 900
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 907
    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 908
    return-void
.end method

.method private setEnable()V
    .locals 9

    .prologue
    const v8, 0x7f020055

    const/4 v7, 0x0

    .line 341
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    :goto_0
    return-void

    .line 354
    :cond_0
    const v6, 0x7f0e00f7

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 355
    .local v0, "iv0":Landroid/widget/ImageView;
    const v6, 0x7f0e0085

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 356
    .local v1, "iv1":Landroid/widget/ImageView;
    const v6, 0x7f0e0088

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 357
    .local v2, "iv2":Landroid/widget/ImageView;
    const v6, 0x7f0e008a

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 358
    .local v3, "iv3":Landroid/widget/ImageView;
    const v6, 0x7f0e0107

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 359
    .local v4, "iv4":Landroid/widget/ImageView;
    const v6, 0x7f0e0101

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 361
    .local v5, "iv5":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_goal:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 362
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_call:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 363
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_sms:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 364
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_smart:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 365
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_long_sit:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 366
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_use_hand:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 367
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_heart_rate:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 368
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_vibrate:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 372
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_find_phone:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 374
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_time:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 375
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->update:Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 379
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 380
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 381
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setHandUpTime()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x2

    .line 397
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getHandupString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "handsUpString":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "handsUpItem":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 400
    aget-object v9, v0, v8

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "sitStartHour":Ljava/lang/String;
    aget-object v9, v0, v8

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "sitStartMinute":Ljava/lang/String;
    aget-object v9, v0, v11

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "sitStopHour":Ljava/lang/String;
    aget-object v9, v0, v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "sitStopMinute":Ljava/lang/String;
    const-string v9, "0"

    aget-object v10, v0, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 405
    .local v2, "opened":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_use_hand:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "~"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .end local v2    # "opened":Ljava/lang/Boolean;
    .end local v3    # "sitStartHour":Ljava/lang/String;
    .end local v4    # "sitStartMinute":Ljava/lang/String;
    .end local v5    # "sitStopHour":Ljava/lang/String;
    .end local v6    # "sitStopMinute":Ljava/lang/String;
    :goto_2
    return-void

    .restart local v3    # "sitStartHour":Ljava/lang/String;
    .restart local v4    # "sitStartMinute":Ljava/lang/String;
    .restart local v5    # "sitStopHour":Ljava/lang/String;
    .restart local v6    # "sitStopMinute":Ljava/lang/String;
    :cond_0
    move v7, v8

    .line 404
    goto :goto_0

    .line 405
    .restart local v2    # "opened":Ljava/lang/Boolean;
    :cond_1
    const v7, 0x7f080206

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 407
    .end local v2    # "opened":Ljava/lang/Boolean;
    .end local v3    # "sitStartHour":Ljava/lang/String;
    .end local v4    # "sitStartMinute":Ljava/lang/String;
    .end local v5    # "sitStopHour":Ljava/lang/String;
    .end local v6    # "sitStopMinute":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_use_hand:Landroid/widget/TextView;

    const-string v8, "08:00~22:00 "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setHearRateMonitor()V
    .locals 3

    .prologue
    .line 415
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getHeartRateMonitingString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "HeartRateString":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_heart_rate:Landroid/widget/TextView;

    const v2, 0x7f0800b3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_heart_rate:Landroid/widget/TextView;

    const v2, 0x7f080195

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setListener()V
    .locals 5

    .prologue
    .line 453
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_long_sit:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 461
    const v1, 0x7f0e00e9

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 469
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_use_hand:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 470
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 477
    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 478
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 487
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    .line 488
    .local v0, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->update:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 490
    invoke-virtual {v1, v2, v3, v4}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v2

    .line 491
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 492
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 505
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$8;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 524
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 527
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 530
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 532
    invoke-virtual {v1, v2, v3, v4}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v2

    .line 534
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Func1;

    move-result-object v2

    .line 535
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 536
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 537
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 539
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 545
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_unbind:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$14;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 546
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 552
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->off:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$15;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 553
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 559
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_smart:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$16;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 560
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 566
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_heart_rate:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$17;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 567
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 573
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_time:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$18;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 574
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 580
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->rl_vibrate:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$19;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 581
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 587
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 599
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 612
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_goal:Landroid/widget/CheckBox;

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 621
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_find_phone:Landroid/widget/CheckBox;

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 629
    return-void
.end method

.method private setLongSit()V
    .locals 13

    .prologue
    const v12, 0x7f080206

    const/4 v11, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 437
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLongSitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "sitString":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "sitStringItem":[Ljava/lang/String;
    array-length v9, v6

    if-ne v9, v11, :cond_2

    .line 441
    aget-object v9, v6, v7

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "sitStartHour":Ljava/lang/String;
    aget-object v9, v6, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "sitStartMinute":Ljava/lang/String;
    aget-object v9, v6, v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "sitStopHour":Ljava/lang/String;
    aget-object v9, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "sitStopMinute":Ljava/lang/String;
    const-string v9, "1"

    const/4 v10, 0x3

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 446
    .local v0, "opened":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_long_sit_remind:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "~"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    .end local v0    # "opened":Ljava/lang/Boolean;
    .end local v1    # "sitStartHour":Ljava/lang/String;
    .end local v2    # "sitStartMinute":Ljava/lang/String;
    .end local v3    # "sitStopHour":Ljava/lang/String;
    .end local v4    # "sitStopMinute":Ljava/lang/String;
    :goto_2
    return-void

    .restart local v1    # "sitStartHour":Ljava/lang/String;
    .restart local v2    # "sitStartMinute":Ljava/lang/String;
    .restart local v3    # "sitStopHour":Ljava/lang/String;
    .restart local v4    # "sitStopMinute":Ljava/lang/String;
    :cond_0
    move v7, v8

    .line 445
    goto :goto_0

    .line 446
    .restart local v0    # "opened":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {p0, v12}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 448
    .end local v0    # "opened":Ljava/lang/Boolean;
    .end local v1    # "sitStartHour":Ljava/lang/String;
    .end local v2    # "sitStartMinute":Ljava/lang/String;
    .end local v3    # "sitStopHour":Ljava/lang/String;
    .end local v4    # "sitStopMinute":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_long_sit_remind:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setTimeDisplay()V
    .locals 3

    .prologue
    .line 426
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getDateDisplayString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "timeDisplayString":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_time:Landroid/widget/TextView;

    const v2, 0x7f0801ec

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_time:Landroid/widget/TextView;

    const v2, 0x7f0801eb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showOffDlg()V
    .locals 8

    .prologue
    .line 713
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 714
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v6, 0x7f040075

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 717
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 720
    .local v2, "dialog":Landroid/app/Dialog;
    const v6, 0x7f0e0261

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 721
    .local v5, "tvContent":Landroid/widget/TextView;
    const-string/jumbo v6, "\u662f\u5426\u786e\u5b9a\u53d1\u9001\u624b\u73af\u5173\u673a\u6307\u4ee4?"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 724
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 728
    const v6, 0x7f0e0262

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 729
    .local v0, "btnCancel":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$9;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    const v6, 0x7f0e0263

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 740
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$10;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    return-void
.end method

.method private showUnBindDlg()V
    .locals 7

    .prologue
    .line 678
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 679
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v5, 0x7f040075

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 682
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 684
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 685
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 689
    const v5, 0x7f0e0262

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 690
    .local v0, "btnCancel":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$7;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    const v5, 0x7f0e0263

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 701
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    return-void
.end method

.method private showUpgradeDialog(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 17
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    .line 632
    const/4 v5, 0x0

    .line 634
    .local v5, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :try_start_0
    new-instance v14, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v15

    const-string v16, "02"

    invoke-virtual/range {v14 .. v16}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 639
    :goto_0
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 640
    .local v2, "ad":Landroid/app/AlertDialog;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 641
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 642
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 643
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 644
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040076

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 646
    .local v8, "layout":Landroid/view/View;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 647
    .local v13, "window":Landroid/view/Window;
    invoke-virtual {v13, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 648
    const/high16 v14, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x437a0000    # 250.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/view/Window;->setLayout(II)V

    .line 649
    const v14, 0x7f0e0091

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 650
    .local v9, "listView":Landroid/widget/ListView;
    const v14, 0x7f0e025b

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 651
    .local v10, "rl_cancel":Landroid/widget/RelativeLayout;
    const v14, 0x7f0e0264

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 652
    .local v11, "rl_done":Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;->lambdaFactory$(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v6, "explain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/utils/LocaleUtil;->isChinese(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 663
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCnMsg()Ljava/lang/String;

    move-result-object v12

    .line 664
    .local v12, "str":Ljava/lang/String;
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :goto_1
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 670
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v14, 0x7f04007c

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 671
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 672
    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 674
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6    # "explain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listView":Landroid/widget/ListView;
    .end local v10    # "rl_cancel":Landroid/widget/RelativeLayout;
    .end local v11    # "rl_done":Landroid/widget/RelativeLayout;
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "window":Landroid/view/Window;
    :cond_0
    return-void

    .line 635
    .end local v2    # "ad":Landroid/app/AlertDialog;
    :catch_0
    move-exception v4

    .line 636
    .local v4, "e":Ljava/sql/SQLException;
    invoke-virtual {v4}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0

    .line 666
    .end local v4    # "e":Ljava/sql/SQLException;
    .restart local v2    # "ad":Landroid/app/AlertDialog;
    .restart local v6    # "explain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    .restart local v8    # "layout":Landroid/view/View;
    .restart local v9    # "listView":Landroid/widget/ListView;
    .restart local v10    # "rl_cancel":Landroid/widget/RelativeLayout;
    .restart local v11    # "rl_done":Landroid/widget/RelativeLayout;
    .restart local v13    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getEnMsg()Ljava/lang/String;

    move-result-object v12

    .line 667
    .restart local v12    # "str":Ljava/lang/String;
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private takePhoto()V
    .locals 2

    .prologue
    .line 773
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 774
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method private unbind()V
    .locals 6

    .prologue
    .line 759
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    .line 760
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/servers/BleServer;->disConnect()V

    .line 761
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 762
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v4}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 763
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->unBindDevice(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    .line 764
    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServer;->releaseInstance()V

    .line 765
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_UNBUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v2, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 767
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->startActivity(Landroid/content/Intent;)V

    .line 769
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->finish()V

    .line 770
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1074
    packed-switch p1, :pswitch_data_0

    .line 1113
    :goto_0
    return-void

    .line 1076
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setHandUpTime()V

    goto :goto_0

    .line 1080
    :pswitch_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSmartString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "smartRemind":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_remind_state:Landroid/widget/TextView;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080208

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f080206

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1086
    .end local v1    # "smartRemind":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setLongSit()V

    goto :goto_0

    .line 1091
    :pswitch_3
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setHearRateMonitor()V

    goto :goto_0

    .line 1096
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setTimeDisplay()V

    goto :goto_0

    .line 1101
    :pswitch_5
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getVibrationIntensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "VibrateString":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1103
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    const v3, 0x7f08018e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1104
    :cond_1
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    const v3, 0x7f08012e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->tv_vibrate_intensity:Landroid/widget/TextView;

    const v3, 0x7f08019d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1074
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 1117
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_music:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1120
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mContext:Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->initView()V

    .line 142
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->initData()V

    .line 145
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setEnable()V

    .line 148
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setListener()V

    .line 151
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->sendToDevice()V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 799
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 800
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->uploadSettings(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 802
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->finish()V

    .line 803
    const/4 v0, 0x1

    .line 805
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1036
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1037
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 1038
    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/meizu/smart/wristband/utils/PermissionUtils;->isPermissionGranted([Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v0

    .line 1039
    .local v0, "b":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1040
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->takePhoto()V

    .line 1045
    .end local v0    # "b":Z
    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_4

    .line 1046
    aget v1, p3, v3

    if-nez v1, :cond_3

    .line 1047
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "01"

    :goto_0
    invoke-static {p0, v2, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 1068
    :cond_1
    :goto_1
    return-void

    .line 1047
    :cond_2
    const-string v1, "00"

    goto :goto_0

    .line 1049
    :cond_3
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_sms:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1051
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u77ed\u4fe1\u6743\u9650\u5df2\u88ab\u62d2\u7edd,\u8bf7\u5230\u8bbe\u7f6e\u4e2d\u8bbe\u7f6e\u77ed\u4fe1\u6743\u9650\u5141\u8bb8"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1056
    :cond_4
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 1057
    aget v1, p3, v3

    if-nez v1, :cond_6

    .line 1058
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "01"

    :goto_2
    invoke-static {p0, v2, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "00"

    goto :goto_2

    .line 1060
    :cond_6
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->cb_remind:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1061
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u6765\u7535\u6743\u9650\u5df2\u88ab\u62d2\u7edd,\u8bf7\u5230\u8bbe\u7f6e\u4e2d\u8bbe\u7f6e\u6765\u7535\u76d1\u542c\u6743\u9650\u5141\u8bb8"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onResume()V

    .line 392
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setContentView(I)V

    .line 132
    return-void
.end method
