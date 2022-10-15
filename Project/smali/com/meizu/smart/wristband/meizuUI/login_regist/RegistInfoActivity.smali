.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "RegistInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_AIM:Ljava/lang/String; = "ACTION_AIM"

.field private static final DEFAULT_NAME:Ljava/lang/String; = "\u9b45\u65cf\u624b\u73af"

.field private static final DEFAULT_SLEEP_AIM:F = 8.0f

.field private static final DEFAULT_SPORT_AIM:I = 0x1f40


# instance fields
.field private MonthList:[Ljava/lang/String;

.field private YearList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btn_next:Landroid/widget/Button;

.field private ivHeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private ivSleepAimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private ivSleepAimMinute:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private ivSportAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private ivWeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private llaoutIndicate:Landroid/widget/LinearLayout;

.field private mSex:I

.field private mSleepAim:Ljava/lang/String;

.field private mSportAim:Ljava/lang/String;

.field private tvNo1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvNo2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvNo3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvNo4:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvPoint1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvPoint2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvPoint3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;

.field private viewAim:Landroid/view/View;

.field private viewBirthday:Landroid/view/View;

.field private viewHeight:Landroid/view/View;

.field private viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

.field private viewPagerAdapter:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;

.field private viewSex:Landroid/view/View;

.field private viewWeight:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->MonthList:[Ljava/lang/String;

    .line 80
    const-string v0, "8000"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSportAim:Ljava/lang/String;

    .line 81
    const-string v0, "480"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSleepAim:Ljava/lang/String;

    .line 513
    return-void
.end method

.method private GoNextOrUploadInfo()V
    .locals 2

    .prologue
    .line 435
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 454
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSportAim:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSportAim:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSportAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewWeight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initWeightView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewHeight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initHeightView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->updatePagerIndeicate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->GoNextOrUploadInfo()V

    return-void
.end method

.method static synthetic access$202(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSleepAim:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSleepAimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSleepAimMinute:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivHeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivWeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSex:I

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->btn_next:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->lambda$GoNextOrUploadInfo$74(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->lambda$GoNextOrUploadInfo$75(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->lambda$GoNextOrUploadInfo$76(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->lambda$GoNextOrUploadInfo$77(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->lambda$GoNextOrUploadInfo$78(Ljava/lang/Throwable;)V

    return-void
.end method

.method private gotoMainActivity()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 461
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->finish()V

    .line 462
    return-void
.end method

.method private initAimView(Landroid/view/View;)V
    .locals 8
    .param p1, "viewAim"    # Landroid/view/View;

    .prologue
    .line 163
    const v6, 0x7f0e02f6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSportAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 164
    const v6, 0x7f0e02f7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;

    .line 166
    .local v1, "SprotScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;
    const v2, 0x46ea6000    # 30000.0f

    .line 167
    .local v2, "mMaxAim":F
    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 169
    .local v4, "mMinAim":F
    const-string v6, "8000"

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSportAim:Ljava/lang/String;

    .line 170
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSportAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSportAim:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmModType(I)V

    .line 173
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmModeBase(I)V

    .line 174
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmLineDivider(I)V

    .line 175
    const/high16 v6, 0x45fa0000    # 8000.0f

    invoke-virtual {v1, v6, v2, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->initViewParam(FFF)V

    .line 176
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;)V

    .line 185
    const/high16 v3, 0x41400000    # 12.0f

    .line 186
    .local v3, "mMaxSleepAim":F
    const/high16 v5, 0x40800000    # 4.0f

    .line 187
    .local v5, "mMinSleepAim":F
    const v6, 0x7f0e02f3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSleepAimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 188
    const v6, 0x7f0e02f4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSleepAimMinute:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 189
    const v6, 0x7f0e02f5

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;

    .line 191
    .local v0, "SleepScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSleepAimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v7, "8"

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivSleepAimMinute:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v7, "00"

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v5, v3, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->initViewParam(FFFI)V

    .line 194
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;)V

    .line 211
    return-void
.end method

.method private initBirthdayView(Landroid/view/View;)V
    .locals 5
    .param p1, "viewBirthday"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 273
    const v2, 0x7f0e0300

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    .line 274
    .local v1, "wvY":Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;
    const v2, 0x7f0e0301

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    .line 275
    .local v0, "wvM":Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;
    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setOffset(I)V

    .line 276
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->YearList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 277
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->YearList:Ljava/util/ArrayList;

    const-string v3, "1995"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setSeletion(I)V

    .line 279
    invoke-virtual {v0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setOffset(I)V

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setSeletion(I)V

    .line 281
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->MonthList:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 283
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    const-string v3, "19950201"

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    .line 285
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setOnWheelViewListener(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$OnWheelViewListener;)V

    .line 296
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setOnWheelViewListener(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$OnWheelViewListener;)V

    .line 306
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 124
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    .local v0, "lf":Landroid/view/LayoutInflater;
    const v1, 0x7f0400b2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewSex:Landroid/view/View;

    .line 126
    const v1, 0x7f0400b0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewBirthday:Landroid/view/View;

    .line 127
    const v1, 0x7f0400b1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewHeight:Landroid/view/View;

    .line 128
    const v1, 0x7f0400b3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewWeight:Landroid/view/View;

    .line 129
    const v1, 0x7f0400af

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewAim:Landroid/view/View;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    .line 132
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewSex:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewBirthday:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewHeight:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewWeight:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewAim:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPagerAdapter:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;

    .line 139
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPagerAdapter:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->setNoScroll(Z)V

    .line 144
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewSex:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initSexView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewBirthday:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initBirthdayView(Landroid/view/View;)V

    .line 148
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewWeight:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initWeightView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewHeight:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initHeightView(Landroid/view/View;)V

    .line 152
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewAim:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initAimView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method private initHeightView(Landroid/view/View;)V
    .locals 7
    .param p1, "viewHeight"    # Landroid/view/View;

    .prologue
    .line 214
    const v4, 0x7f0e0303

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivHeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 215
    const v4, 0x7f0e0302

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;

    .line 218
    .local v0, "VerticalScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;
    const/16 v1, 0xa0

    .line 219
    .local v1, "defValue":I
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSex:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 220
    const/16 v1, 0xaa

    .line 223
    :cond_0
    const/high16 v2, 0x43700000    # 240.0f

    .line 224
    .local v2, "mMaxHeight":F
    const/high16 v3, 0x42200000    # 40.0f

    .line 225
    .local v3, "mMinHeight":F
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setHeight(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivHeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    int-to-float v4, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->initViewParam(FFF)V

    .line 228
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$3;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    invoke-virtual {v0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;)V

    .line 237
    return-void
.end method

.method private initList()V
    .locals 6

    .prologue
    .line 370
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 372
    .local v2, "year":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->YearList:Ljava/util/ArrayList;

    .line 373
    const/16 v1, 0x64

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 374
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->YearList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method private initSexView(Landroid/view/View;)V
    .locals 8
    .param p1, "viewSex"    # Landroid/view/View;

    .prologue
    .line 315
    const v0, 0x7f0e0304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 316
    .local v7, "lyMale":Landroid/widget/LinearLayout;
    const v0, 0x7f0e0307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 318
    .local v6, "lyFemale":Landroid/widget/LinearLayout;
    const v0, 0x7f0e0305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 319
    .local v2, "btnMale":Landroid/widget/Button;
    const v0, 0x7f0e0306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 321
    .local v3, "tvMale":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    const v0, 0x7f0e0308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 322
    .local v4, "btnFemale":Landroid/widget/Button;
    const v0, 0x7f0e0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 326
    .local v5, "tvFemale":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/widget/Button;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;Landroid/widget/Button;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/widget/Button;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;Landroid/widget/Button;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 387
    const v0, 0x7f0e0290

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    .line 388
    const v0, 0x7f0e02f8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->llaoutIndicate:Landroid/widget/LinearLayout;

    .line 389
    const v0, 0x7f0e0235

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->btn_next:Landroid/widget/Button;

    .line 390
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->btn_next:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    const v0, 0x7f0e02f9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvNo1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 393
    const v0, 0x7f0e02fb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvNo2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 394
    const v0, 0x7f0e02fd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvNo3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 395
    const v0, 0x7f0e02ff

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvNo4:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 396
    const v0, 0x7f0e02fa

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvPoint1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 397
    const v0, 0x7f0e02fc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvPoint2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 398
    const v0, 0x7f0e02fe

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->tvPoint3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 399
    return-void
.end method

.method private initWeightView(Landroid/view/View;)V
    .locals 7
    .param p1, "viewWeight"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 240
    const v4, 0x7f0e030a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivWeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 243
    const/16 v0, 0x32

    .line 244
    .local v0, "defValue":I
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSex:I

    if-ne v4, v5, :cond_0

    .line 245
    const/16 v0, 0x46

    .line 249
    :cond_0
    const v4, 0x7f0e030b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;

    .line 250
    .local v3, "mWeightWheelView":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;
    const/high16 v1, 0x42f00000    # 120.0f

    .line 251
    .local v1, "mMaxWeight":F
    const/high16 v2, 0x41a00000    # 20.0f

    .line 253
    .local v2, "mMinWeight":F
    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmModeBase(I)V

    .line 254
    int-to-float v4, v0

    invoke-virtual {v3, v4, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->initViewParam(FFF)V

    .line 255
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setWeight(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->ivWeight:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$4;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;)V

    .line 264
    return-void
.end method

.method private synthetic lambda$GoNextOrUploadInfo$74(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPagerAdapter:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->setCurrentItem(I)V

    .line 439
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private synthetic lambda$GoNextOrUploadInfo$75(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p1, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 444
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    const-string/jumbo v2, "\u9b45\u65cf\u624b\u73af"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->setNickname(Ljava/lang/String;)V

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->uploadUserInfo()Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$GoNextOrUploadInfo$76(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSportAim:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->mSleepAim:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->uploadAim(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$GoNextOrUploadInfo$77(Ljava/lang/Object;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->gotoMainActivity()V

    return-void
.end method

.method private synthetic lambda$GoNextOrUploadInfo$78(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$9;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 421
    const v0, 0x7f0e0235

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$10;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    .line 422
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 429
    return-void
.end method

.method private setUserIsEmpty()V
    .locals 5

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .local v2, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->storeInfo(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 116
    .end local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setIsEmpty(Ljava/lang/Boolean;)V

    .line 117
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->storeInfo(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 118
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    goto :goto_1
.end method

.method private updatePagerIndeicate()V
    .locals 5

    .prologue
    .line 481
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPager:Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v2

    .line 482
    .local v2, "index":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->viewPagerAdapter:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$MyViewPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->llaoutIndicate:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->btn_next:Landroid/widget/Button;

    const v4, 0x7f0801de

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 510
    :cond_0
    return-void

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->btn_next:Landroid/widget/Button;

    const v4, 0x7f0801fa

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 489
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->llaoutIndicate:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    .line 494
    const/4 v0, 0x1

    .line 495
    .local v0, "bEnable":Z
    if-gt v1, v2, :cond_2

    .line 496
    const/4 v0, 0x0

    .line 498
    :cond_2
    const v3, 0x7f0e02f9

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "bEnable":Z
    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 503
    const/4 v0, 0x1

    .line 504
    .restart local v0    # "bEnable":Z
    if-ge v1, v2, :cond_4

    .line 505
    const/4 v0, 0x0

    .line 507
    :cond_4
    const v3, 0x7f0e02fa

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadAim(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "sportAim"    # Ljava/lang/String;
    .param p2, "sleepAim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private uploadUserInfo()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;ZZ)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onBackPressed()V

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 93
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->setUserIsEmpty()V

    .line 94
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initList()V

    .line 96
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initData()V

    .line 97
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->setListener()V

    .line 98
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f040090

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->setContentView(I)V

    .line 87
    return-void
.end method
