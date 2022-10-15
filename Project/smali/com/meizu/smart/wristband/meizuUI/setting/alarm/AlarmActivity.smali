.class public Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;
    }
.end annotation


# static fields
.field protected static alarmsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static alarms_String:[Ljava/lang/String;


# instance fields
.field private alarm_listview:Landroid/widget/ListView;

.field private array_week:[Ljava/lang/String;

.field private close_color:I

.field private current_hour:I

.field private current_minute:I

.field private firstIn:Z

.field private isAddAlarm:Z

.field private myListAdapter:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

.field private open_color:I

.field protected operating_alarm:I

.field private scrollView:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 65
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    .line 281
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->isAddAlarm:Z

    .line 484
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->current_hour:I

    .line 485
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->current_minute:I

    return-void
.end method

.method private CheckOnceTimeIsOutdate()V
    .locals 16

    .prologue
    .line 216
    sget-object v12, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 271
    :cond_0
    return-void

    .line 219
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    sget-object v12, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_0

    .line 221
    sget-object v12, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 222
    .local v9, "strAlarm":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "alarmStringItem":[Ljava/lang/String;
    const/4 v12, 0x4

    aget-object v10, v1, v12

    .line 225
    .local v10, "strAlarmtime":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    .line 227
    invoke-static {}, Lcom/meizu/smart/wristband/utils/Gettime;->getDATETS()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "date":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 232
    sget-object v12, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v12, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v2    # "date":Ljava/lang/String;
    :cond_2
    const-string v12, "00000001"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 236
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyyMMddHHmm"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, "format":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, "strNow":Ljava/lang/String;
    const/4 v8, 0x0

    .line 239
    .local v8, "now":Ljava/util/Date;
    const/4 v0, 0x0

    .line 241
    .local v0, "AlarmDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 242
    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 246
    :goto_1
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long v4, v12, v14

    .line 249
    .local v4, "diff":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_3

    .line 250
    const-string v12, "00000001"

    const-string v13, "00000000"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 251
    sget-object v12, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v12, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v0    # "AlarmDate":Ljava/util/Date;
    .end local v4    # "diff":J
    .end local v6    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "now":Ljava/util/Date;
    .end local v11    # "strNow":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 243
    .restart local v0    # "AlarmDate":Ljava/util/Date;
    .restart local v6    # "format":Ljava/text/SimpleDateFormat;
    .restart local v8    # "now":Ljava/util/Date;
    .restart local v11    # "strNow":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private CheckUpdate()V
    .locals 4

    .prologue
    .line 751
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 753
    .local v0, "mDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 754
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V

    .line 755
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$5;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V

    .line 766
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 777
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 778
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Action1;

    move-result-object v3

    .line 780
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 781
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 782
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    .line 783
    invoke-virtual {v2}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 784
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 785
    return-void
.end method

.method private JumpToEditActivity(ZI)V
    .locals 4
    .param p1, "bAdd"    # Z
    .param p2, "index"    # I

    .prologue
    .line 144
    const-string v1, ""

    .line 145
    .local v1, "strAlarm":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,00,00000000,201612140800"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "alarm"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v2, "isAdd"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void

    .line 148
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "strAlarm":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "strAlarm":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->JumpToEditActivity(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;
    .param p4, "x4"    # Landroid/widget/TextView;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->initAlarmUI([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;
    .param p4, "x4"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->setTextCheck(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->CheckUpdate()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->lambda$setListener$271(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->lambda$CheckUpdate$272(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->lambda$CheckUpdate$273(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->lambda$CheckUpdate$274(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->lambda$CheckUpdate$275(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->lambda$CheckUpdate$276(Ljava/lang/Boolean;)V

    return-void
.end method

.method private calDateDiff(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "CurDate"    # Ljava/util/Date;
    .param p2, "NextDate"    # Ljava/util/Date;

    .prologue
    .line 490
    return-void
.end method

.method private chenckBandVersion()V
    .locals 4

    .prologue
    .line 105
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 106
    .local v0, "mDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getCoreVersion()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "ver":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "verCode":I
    const/16 v3, 0x8f

    if-ge v2, v3, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->showCheckDlg()V

    .line 120
    .end local v1    # "ver":Ljava/lang/String;
    .end local v2    # "verCode":I
    :cond_0
    return-void
.end method

.method private getDatabaseAlarm()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 185
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 186
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getAlarmString(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarms_String:[Ljava/lang/String;

    .line 188
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarms_String:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarms_String:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarms_String:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 191
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarms_String:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 192
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarms_String:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,00,00000000,201612140800"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "tmp":Ljava/lang/String;
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    .end local v0    # "i":I
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_2

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,00,00000000,201612140800"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1    # "tmp":Ljava/lang/String;
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->CheckOnceTimeIsOutdate()V

    .line 207
    return-void
.end method

.method private getNextAlarmTime([Ljava/lang/String;)V
    .locals 13
    .param p1, "alarmStringItem"    # [Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 628
    .local v5, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x4

    aget-object v10, p1, v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "alarmHour":Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v10, p1, v10

    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "alarmMinute":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 631
    .local v2, "alarm_hour":I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 633
    .local v3, "alarm_minute":I
    const/16 v10, 0xb

    invoke-virtual {v5, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 634
    const/16 v10, 0xc

    invoke-virtual {v5, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 648
    const/4 v10, 0x7

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 651
    .local v6, "current_week":I
    const/4 v8, -0x1

    .line 652
    .local v8, "nCurrent_week":I
    const/4 v10, 0x3

    aget-object v10, p1, v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 653
    .local v9, "weeks":[C
    move v7, v6

    .local v7, "i":I
    :goto_0
    const/4 v10, 0x7

    if-ge v7, v10, :cond_1

    .line 654
    aget-char v4, v9, v7

    .line 655
    .local v4, "c":C
    const/16 v10, 0x31

    if-ne v4, v10, :cond_0

    .line 656
    add-int/lit8 v8, v7, 0x1

    .line 653
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 659
    .end local v4    # "c":C
    :cond_1
    return-void
.end method

.method private gotoOTA()V
    .locals 7

    .prologue
    .line 789
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v3

    .line 790
    .local v3, "mDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-nez v3, :cond_1

    .line 792
    :try_start_0
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "02"

    invoke-virtual {v4, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 793
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "device_name"

    const-string v5, "B521"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v4, "device_mac"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    const-string v4, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 801
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 803
    :try_start_1
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "02"

    invoke-virtual {v4, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 804
    .restart local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const-string v4, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v4, "filepath"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 809
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 810
    .restart local v0    # "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private initAlarmUI([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 26
    .param p1, "alarmStringItem"    # [Ljava/lang/String;
    .param p2, "tv1"    # Landroid/widget/TextView;
    .param p3, "tv2"    # Landroid/widget/TextView;
    .param p4, "tv3"    # Landroid/widget/TextView;

    .prologue
    .line 493
    const/4 v11, 0x0

    .line 494
    .local v11, "current_in_minute":I
    const/4 v6, 0x0

    .line 498
    .local v6, "alarm_in_minute":I
    const/16 v23, 0x4

    :try_start_0
    aget-object v20, p1, v23

    .line 499
    .local v20, "strAlarmtime":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 501
    invoke-static {}, Lcom/meizu/smart/wristband/utils/Gettime;->getDATETS()Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, "date":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 504
    .end local v13    # "date":Ljava/lang/String;
    :cond_0
    const/16 v23, 0x8

    const/16 v24, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "alarmHour":Ljava/lang/String;
    const/16 v23, 0xa

    const/16 v24, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "alarmMinute":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 508
    .local v5, "alarm_hour":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 509
    .local v7, "alarm_minute":I
    mul-int/lit8 v23, v5, 0x3c

    add-int v6, v23, v7

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->current_hour:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->current_minute:I

    move/from16 v24, v0

    add-int v11, v23, v24

    .line 511
    const/16 v18, 0x0

    .line 513
    .local v18, "remian_in_minutes":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 514
    .local v10, "calendar":Ljava/util/Calendar;
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 516
    .local v12, "current_week":I
    if-le v11, v6, :cond_7

    .line 517
    rsub-int v0, v11, 0x5a0

    move/from16 v23, v0

    add-int v18, v23, v6

    .line 518
    add-int/lit8 v12, v12, 0x1

    .line 523
    :goto_0
    const/16 v23, 0x3c

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 524
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v24, v18, 0x3c

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f080131

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    rem-int/lit8 v24, v18, 0x3c

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f0801a0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f08014e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_1
    const/16 v17, -0x1

    .line 531
    .local v17, "nextDayIndex":I
    const/16 v23, 0x3

    aget-object v23, p1, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    .line 532
    .local v21, "weeks":[C
    add-int/lit8 v15, v12, -0x1

    .local v15, "i":I
    :goto_2
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ge v15, v0, :cond_1

    .line 533
    aget-char v9, v21, v15

    .line 534
    .local v9, "c":C
    const/16 v23, 0x31

    move/from16 v0, v23

    if-ne v9, v0, :cond_9

    .line 535
    move/from16 v17, v15

    .line 540
    .end local v9    # "c":C
    :cond_1
    const/16 v16, 0x0

    .line 541
    .local v16, "nDayDiff":I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 542
    add-int/lit8 v23, v12, -0x1

    sub-int v16, v17, v23

    .line 547
    :cond_2
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 548
    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v23, v12, -0x1

    move/from16 v0, v23

    if-ge v15, v0, :cond_3

    .line 549
    aget-char v9, v21, v15

    .line 550
    .restart local v9    # "c":C
    const/16 v23, 0x31

    move/from16 v0, v23

    if-ne v9, v0, :cond_a

    .line 551
    move/from16 v17, v15

    .line 556
    .end local v9    # "c":C
    :cond_3
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 557
    add-int/lit8 v23, v12, -0x1

    rsub-int/lit8 v23, v23, 0x7

    add-int v16, v17, v23

    .line 562
    :cond_4
    if-eqz v16, :cond_5

    .line 563
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f0800e2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v3    # "alarmHour":Ljava/lang/String;
    .end local v4    # "alarmMinute":Ljava/lang/String;
    .end local v5    # "alarm_hour":I
    .end local v7    # "alarm_minute":I
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "current_week":I
    .end local v15    # "i":I
    .end local v16    # "nDayDiff":I
    .end local v17    # "nextDayIndex":I
    .end local v18    # "remian_in_minutes":I
    .end local v20    # "strAlarmtime":Ljava/lang/String;
    .end local v21    # "weeks":[C
    :cond_5
    :goto_4
    const/16 v23, 0x3

    aget-object v23, p1, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    .line 572
    .restart local v21    # "weeks":[C
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ge v15, v0, :cond_b

    .line 574
    aget-char v9, v21, v15

    .line 575
    .restart local v9    # "c":C
    const/16 v23, 0x31

    move/from16 v0, v23

    if-ne v9, v0, :cond_6

    .line 576
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 520
    .end local v9    # "c":C
    .end local v15    # "i":I
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "weeks":[C
    .restart local v3    # "alarmHour":Ljava/lang/String;
    .restart local v4    # "alarmMinute":Ljava/lang/String;
    .restart local v5    # "alarm_hour":I
    .restart local v7    # "alarm_minute":I
    .restart local v10    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "current_week":I
    .restart local v18    # "remian_in_minutes":I
    .restart local v20    # "strAlarmtime":Ljava/lang/String;
    :cond_7
    sub-int v18, v6, v11

    goto/16 :goto_0

    .line 526
    :cond_8
    :try_start_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v24, v18, 0x3c

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f0801a0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f08014e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 567
    .end local v3    # "alarmHour":Ljava/lang/String;
    .end local v4    # "alarmMinute":Ljava/lang/String;
    .end local v5    # "alarm_hour":I
    .end local v7    # "alarm_minute":I
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "current_week":I
    .end local v18    # "remian_in_minutes":I
    .end local v20    # "strAlarmtime":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 568
    .local v14, "e":Ljava/lang/Exception;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "AlarmFragment1 164 e"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 532
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v3    # "alarmHour":Ljava/lang/String;
    .restart local v4    # "alarmMinute":Ljava/lang/String;
    .restart local v5    # "alarm_hour":I
    .restart local v7    # "alarm_minute":I
    .restart local v9    # "c":C
    .restart local v10    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "current_week":I
    .restart local v15    # "i":I
    .restart local v17    # "nextDayIndex":I
    .restart local v18    # "remian_in_minutes":I
    .restart local v20    # "strAlarmtime":Ljava/lang/String;
    .restart local v21    # "weeks":[C
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 548
    .restart local v16    # "nDayDiff":I
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 580
    .end local v3    # "alarmHour":Ljava/lang/String;
    .end local v4    # "alarmMinute":Ljava/lang/String;
    .end local v5    # "alarm_hour":I
    .end local v7    # "alarm_minute":I
    .end local v9    # "c":C
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "current_week":I
    .end local v16    # "nDayDiff":I
    .end local v17    # "nextDayIndex":I
    .end local v18    # "remian_in_minutes":I
    .end local v20    # "strAlarmtime":Ljava/lang/String;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_c

    .line 581
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 584
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 585
    .local v22, "work_time":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 586
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 587
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 588
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 591
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "all_time":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 593
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 594
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 595
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 596
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 597
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 598
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 599
    const v23, 0x7f0802dd

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 616
    :goto_6
    const-string v23, "1"

    const/16 v24, 0x3

    aget-object v24, p1, v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 617
    const/16 v23, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    :goto_7
    return-void

    .line 600
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 601
    const v23, 0x7f0800ff

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 602
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_f

    .line 603
    const v23, 0x7f0800ab

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 605
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 619
    :cond_10
    const/16 v23, 0x8

    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 179
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 180
    iget v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->current_hour:I

    .line 181
    iget v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->current_minute:I

    .line 182
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 160
    const v0, 0x7f0e0278

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->scrollView:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    .line 161
    const v0, 0x7f0e0279

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarm_listview:Landroid/widget/ListView;

    .line 162
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarm_listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarm_listview:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->array_week:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method private static synthetic lambda$CheckUpdate$272(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 777
    return-object p0
.end method

.method private static synthetic lambda$CheckUpdate$273(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 778
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

.method private synthetic lambda$CheckUpdate$274(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)V
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 780
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    return-void
.end method

.method private synthetic lambda$CheckUpdate$275(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 781
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$CheckUpdate$276(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->gotoOTA()V

    return-void
.end method

.method private synthetic lambda$setListener$271(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 127
    const v0, 0x7f0e0277

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method private setTextCheck(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "tv1"    # Landroid/widget/TextView;
    .param p2, "tv2"    # Landroid/widget/TextView;
    .param p3, "tv3"    # Landroid/widget/TextView;
    .param p4, "check"    # Z

    .prologue
    .line 663
    if-eqz p4, :cond_0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->open_color:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    if-eqz p4, :cond_1

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->open_color:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    if-eqz p4, :cond_2

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->open_color:I

    :goto_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 666
    if-eqz p4, :cond_3

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    return-void

    .line 663
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->close_color:I

    goto :goto_0

    .line 664
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->close_color:I

    goto :goto_1

    .line 665
    :cond_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->close_color:I

    goto :goto_2

    .line 666
    :cond_3
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private showCheckDlg()V
    .locals 10

    .prologue
    .line 705
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 706
    .local v5, "inflaterDl":Landroid/view/LayoutInflater;
    const v8, 0x7f0400b7

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 710
    .local v6, "layout":Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 712
    .local v3, "dlgTip":Landroid/app/AlertDialog;
    const v8, 0x7f0e030f

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 713
    .local v7, "tvTip":Landroid/widget/TextView;
    const v8, 0x7f0801ac

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 715
    const v8, 0x7f0e0312

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 716
    .local v4, "enter":Landroid/widget/TextView;
    const v8, 0x7f0e0311

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 718
    .local v2, "cancel":Landroid/widget/TextView;
    const v8, 0x7f0800cc

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 719
    const v8, 0x7f080289

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 721
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 722
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 723
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 727
    const v8, 0x7f0e0263

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 728
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v8, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;

    invoke-direct {v8, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    const v8, 0x7f0e0310

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 739
    .local v0, "btnNomore":Landroid/widget/RelativeLayout;
    new-instance v8, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$4;

    invoke-direct {v8, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    return-void
.end method

.method private updateAlarmIndex()V
    .locals 4

    .prologue
    .line 697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 698
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 699
    .local v1, "strAlarm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v1    # "strAlarm":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public isAddAlarm()Z
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->isAddAlarm:Z

    .line 286
    .local v0, "add":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->isAddAlarm:Z

    .line 287
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 672
    if-ne p1, v1, :cond_1

    .line 673
    if-ne p2, v1, :cond_2

    .line 674
    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 675
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->updateAlarmIndex()V

    .line 684
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    .line 685
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$AlarmListAdapter;->notifyDataSetChanged()V

    .line 687
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 688
    return-void

    .line 676
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 677
    const-string v1, "alarm"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "strAlam":Ljava/lang/String;
    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 679
    .end local v0    # "strAlam":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 680
    const-string v1, "alarm"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .restart local v0    # "strAlam":Ljava/lang/String;
    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->saveAlarm(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->initData()V

    .line 83
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->getDatabaseAlarm()V

    .line 85
    const-string v0, "#E6000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->open_color:I

    .line 86
    const-string v0, "#4D000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->close_color:I

    .line 88
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->initView()V

    .line 89
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->setListener()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->firstIn:Z

    .line 92
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->chenckBandVersion()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 276
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->uploadSettings(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 277
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 278
    return-void
.end method

.method public saveAlarm(I)V
    .locals 26
    .param p1, "index"    # I

    .prologue
    .line 296
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->getConnectDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 297
    .local v10, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v10, :cond_1

    .line 298
    const-string v22, "save alarm connect device is null.retrun "

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    sget-object v22, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 305
    sget-object v22, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 307
    .local v19, "strAlarm":Ljava/lang/String;
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "alarmStringItem":[Ljava/lang/String;
    const/16 v22, 0x4

    aget-object v20, v7, v22

    .line 310
    .local v20, "strAlarmtime":Ljava/lang/String;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v22, "yyyyMMddHHmm"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 311
    .local v14, "format":Ljava/text/SimpleDateFormat;
    new-instance v22, Ljava/util/Date;

    invoke-direct/range {v22 .. v22}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 312
    .local v21, "strNow":Ljava/lang/String;
    const/16 v16, 0x0

    .line 313
    .local v16, "now":Ljava/util/Date;
    const/4 v4, 0x0

    .line 315
    .local v4, "AlarmDate":Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 316
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 320
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    sub-long v12, v22, v24

    .line 323
    .local v12, "diff":J
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-ltz v22, :cond_2

    .line 324
    const-string v22, "00000001"

    const-string v23, "00000000"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 325
    sget-object v22, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    if-nez v15, :cond_3

    .line 329
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 317
    .end local v12    # "diff":J
    :catch_0
    move-exception v11

    .line 318
    .local v11, "e":Ljava/text/ParseException;
    invoke-virtual {v11}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 331
    .end local v11    # "e":Ljava/text/ParseException;
    .restart local v12    # "diff":J
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 335
    .end local v4    # "AlarmDate":Ljava/util/Date;
    .end local v7    # "alarmStringItem":[Ljava/lang/String;
    .end local v12    # "diff":J
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .end local v16    # "now":Ljava/util/Date;
    .end local v19    # "strAlarm":Ljava/lang/String;
    .end local v20    # "strAlarmtime":Ljava/lang/String;
    .end local v21    # "strNow":Ljava/lang/String;
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveAlarm sb = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveAlarmString(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 338
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "alarm":Ljava/lang/String;
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "alarms":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_5

    .line 343
    const/16 v22, 0x0

    const-string v23, "0,0,00,00000000,0000"

    aput-object v23, v8, v22

    .line 347
    :cond_5
    aget-object v18, v8, p1

    .line 350
    .local v18, "sendAlarm":Ljava/lang/String;
    const-string v22, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 353
    .restart local v7    # "alarmStringItem":[Ljava/lang/String;
    const-string v20, "0000"

    .line 354
    .restart local v20    # "strAlarmtime":Ljava/lang/String;
    array-length v0, v7

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 355
    const/16 v22, 0x4

    aget-object v20, v7, v22

    .line 356
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 357
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 361
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "current sendAlarm = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 362
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "send alarm date before = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x3

    aget-object v23, v7, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 363
    const/16 v22, 0x3

    aget-object v22, v7, v22

    invoke-static/range {v22 .. v22}, Lcom/meizu/smart/wristband/utils/NumberFormat;->BToH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "HexDate":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 365
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    aget-object v23, v7, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 369
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "send alarm date after = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 371
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v9

    .line 372
    .local v9, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    if-eqz v9, :cond_0

    .line 373
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->sendAlarmToBand(Ljava/lang/String;)Lrx/Observable;

    move-result-object v22

    new-instance v23, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct/range {v23 .. v23}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 374
    invoke-virtual/range {v22 .. v23}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0
.end method

.method public setAddAlarmState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->isAddAlarm:Z

    .line 292
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->setContentView(I)V

    .line 77
    return-void
.end method
