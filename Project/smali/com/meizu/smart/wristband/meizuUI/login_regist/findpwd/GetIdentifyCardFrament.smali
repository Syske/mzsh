.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;
.super Landroid/support/v4/app/Fragment;
.source "GetIdentifyCardFrament.java"


# instance fields
.field private act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

.field private btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

.field private mEditText_identifyCard:Landroid/widget/EditText;

.field private mEditText_username:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private tv_left_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private CheckNextButtonIsEnable()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_identifyCard:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->CheckNextButtonIsEnable()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$setListener$5(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$setListener$6(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(ILjava/lang/Long;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$timerddd$15(ILjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$timerddd$16(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$timerddd$17(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$checkIdentifyCard$18(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$checkIdentifyCard$19(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$setListener$7(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$requestIdentifyCard$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$requestIdentifyCard$9(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$requestIdentifyCard$10(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$requestIdentifyCard$11(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$requestIdentifyCard$12()V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$timerddd$13(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;ILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->lambda$timerddd$14(ILjava/lang/Long;)V

    return-void
.end method

.method private checkIdentifyCard()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_identifyCard:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->checkIndentifyCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$14;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$15;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 142
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 143
    return-void
.end method

.method private checkInputValue()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_username:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_identifyCard:Landroid/widget/EditText;

    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    .line 51
    return-void
.end method

.method private synthetic lambda$checkIdentifyCard$18(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->gotoStep2(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$checkIdentifyCard$19(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestIdentifyCard$10(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->timerddd(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$requestIdentifyCard$11(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestIdentifyCard$12()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$requestIdentifyCard$8(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$requestIdentifyCard$9(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->requestIdentifyCard(Landroid/content/Context;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$5(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->checkInputValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$6(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->checkIdentifyCard()V

    return-void
.end method

.method private synthetic lambda$setListener$7(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->requestIdentifyCard()V

    return-void
.end method

.method private synthetic lambda$timerddd$13(Ljava/lang/Long;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$timerddd$14(ILjava/lang/Long;)V
    .locals 6
    .param p2, "num"    # Ljava/lang/Long;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$timerddd$15(ILjava/lang/Long;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$timerddd$16(Ljava/lang/Long;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$timerddd$17(Ljava/lang/Long;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private requestIdentifyCard()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Func1;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Func1;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action0;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lrx/Observable;->finallyDo(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 125
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V

    .line 56
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 63
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Func1;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 68
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->tv_left_num:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 70
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_username:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->mEditText_identifyCard:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/FindPwdActivity;

    .line 40
    const v0, 0x7f0400a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->initView()V

    .line 42
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->setListener()V

    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public timerddd(I)Lrx/Observable;
    .locals 3
    .param p1, "time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    .line 130
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;I)Lrx/functions/Action1;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;->lambdaFactory$(I)Lrx/functions/Func1;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)Lrx/functions/Action1;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
