.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;
.super Landroid/support/v4/app/Fragment;
.source "PhoneRegistFragment.java"


# instance fields
.field private act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

.field beforText:Ljava/lang/String;

.field private btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

.field private pin:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private telpthone:Landroid/widget/EditText;

.field private tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->beforText:Ljava/lang/String;

    return-void
.end method

.method private CheckNextButtonIsEnable()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->pin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->CheckNextButtonIsEnable()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$setListener$46(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$setListener$47(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$goCheckIdentifyCard$56(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$goCheckIdentifyCard$57(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$goCheckIdentifyCard$58(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$13(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$goCheckIdentifyCard$59(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$goCheckIdentifyCard$60(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$15(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$timerddd$61(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$16(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;ILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$timerddd$62(ILjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$17(ILjava/lang/Long;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$timerddd$63(ILjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$18(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$timerddd$64(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$19(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$timerddd$65(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$48(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$49(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$50(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$51(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$52(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$53(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$54(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->lambda$requestIdentifyCard$55()V

    return-void
.end method

.method private goCheckIdentifyCard()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$14;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$15;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 157
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 158
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    const v0, 0x7f0e023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 57
    const v0, 0x7f0e0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f0e0242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->pin:Landroid/widget/EditText;

    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->btn_next:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    .line 62
    return-void
.end method

.method private synthetic lambda$goCheckIdentifyCard$56(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->pin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$goCheckIdentifyCard$57(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method private synthetic lambda$goCheckIdentifyCard$58(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->pin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->checkIndentifyCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$goCheckIdentifyCard$59(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->gotoStep2(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$goCheckIdentifyCard$60(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->getContext()Landroid/content/Context;

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

.method private synthetic lambda$requestIdentifyCard$48(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;->isPhoneLegal(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$requestIdentifyCard$49(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method private static synthetic lambda$requestIdentifyCard$50(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    return-object p0
.end method

.method private synthetic lambda$requestIdentifyCard$51(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$requestIdentifyCard$52(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->requestIdentifyCard(Landroid/content/Context;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$requestIdentifyCard$53(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->timerddd(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$requestIdentifyCard$54(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->getContext()Landroid/content/Context;

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

.method private synthetic lambda$requestIdentifyCard$55()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$setListener$46(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->requestIdentifyCard()V

    return-void
.end method

.method private synthetic lambda$setListener$47(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->goCheckIdentifyCard()V

    return-void
.end method

.method private synthetic lambda$timerddd$61(Ljava/lang/Long;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$timerddd$62(ILjava/lang/Long;)V
    .locals 6
    .param p2, "num"    # Ljava/lang/Long;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$timerddd$63(ILjava/lang/Long;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 167
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

.method private synthetic lambda$timerddd$64(Ljava/lang/Long;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$timerddd$65(Ljava/lang/Long;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/Long;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    return-void
.end method

.method private requestIdentifyCard()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$5;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action0;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lrx/Observable;->finallyDo(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 146
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V

    .line 69
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->tv_left_num:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 79
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->telpthone:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->pin:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->act:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    .line 48
    const v0, 0x7f0400a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->rootView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->initView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->setListener()V

    .line 51
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->rootView:Landroid/view/View;

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
    .line 162
    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    .line 164
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$16;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;I)Lrx/functions/Action1;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$18;->lambdaFactory$(I)Lrx/functions/Func1;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$19;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$20;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
