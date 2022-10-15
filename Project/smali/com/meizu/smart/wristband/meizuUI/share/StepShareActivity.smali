.class public Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "StepShareActivity.java"


# static fields
.field public static final SPORT_CALORIE:Ljava/lang/String; = "SPORT_CALORIE"

.field public static final SPORT_DATE_INFO:Ljava/lang/String; = "SPORT_DATE_INFO"

.field public static final SPORT_DISTANCE:Ljava/lang/String; = "SPORT_DISTANCE"

.field public static final SPORT_STEP:Ljava/lang/String; = "SPORT_STEP"

.field public static final SPORT_TIME:Ljava/lang/String; = "SPORT_TIME"


# instance fields
.field private SportStep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private iconPathString:Ljava/lang/String;

.field private llShareAppInfo:Landroid/widget/LinearLayout;

.field private llShareButton:Landroid/widget/LinearLayout;

.field private rlShareBitmap:Landroid/widget/LinearLayout;

.field private rlShateTitle:Landroid/widget/RelativeLayout;

.field private sportCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sportDistance:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sportTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sport_date:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private userphoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->iconPathString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->showShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->lambda$onCreate$293()V

    return-void
.end method

.method private getCutScreen()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;-><init>()V

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->rlShareBitmap:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->getBitmappath(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->iconPathString:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private initDate()V
    .locals 9

    .prologue
    .line 68
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v3

    .line 69
    .local v3, "loginUser":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->userphoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->dncodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 74
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SPORT_DATE_INFO"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "dateInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sport_date:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SPORT_STEP"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, "step":I
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->SportStep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SPORT_TIME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sportTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SPORT_DISTANCE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "distance":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sportDistance:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SPORT_CALORIE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "calorie":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sportCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f0e02e1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->rlShareBitmap:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f0e02e7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->llShareAppInfo:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f0e02c9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->llShareButton:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0e02e8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->rlShateTitle:Landroid/widget/RelativeLayout;

    .line 107
    const v0, 0x7f0e02e2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->userphoto:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0e0156

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 110
    const v0, 0x7f0e02eb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sport_date:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 112
    const v0, 0x7f0e02ec

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->SportStep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 114
    const v0, 0x7f0e0103

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sportTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 115
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sportDistance:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 117
    const v0, 0x7f0e02ed

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->sportCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 120
    return-void
.end method

.method private synthetic lambda$onCreate$293()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->getCutScreen()V

    return-void
.end method

.method private setListener()V
    .locals 3

    .prologue
    .line 124
    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 125
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f0e0162

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f0e0163

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f0e02ca

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f0e02cb

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$5;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method private showShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iconPathString"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 175
    .local v0, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 176
    const-string v1, "Have a look now!"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 178
    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->ExistSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSDFreeSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setFilePath(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 184
    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 187
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;-><init>()V

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 188
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->initView()V

    .line 61
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->initDate()V

    .line 62
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->setListener()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 64
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f04009e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->setContentView(I)V

    .line 55
    return-void
.end method
