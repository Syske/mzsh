.class public Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SleepShareActivity.java"


# static fields
.field public static final SLEEP_DATE_INFO:Ljava/lang/String; = "SLEEP_DATE_INFO"

.field public static final SLEEP_DEEP_DURATION:Ljava/lang/String; = "SLEEP_DEEP_DURATION"

.field public static final SLEEP_DURATION:Ljava/lang/String; = "SLEEP_DURATION"

.field public static final SLEEP_END_TIME:Ljava/lang/String; = "SLEEP_END_TIME"

.field public static final SLEEP_START_TIME:Ljava/lang/String; = "SLEEP_START_TIME"


# instance fields
.field private deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private endTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private iconPathString:Ljava/lang/String;

.field private llShareAppInfo:Landroid/widget/LinearLayout;

.field private llShareButton:Landroid/widget/LinearLayout;

.field private rlShareBitmap:Landroid/widget/LinearLayout;

.field private rlShateTitle:Landroid/widget/RelativeLayout;

.field private sleepDate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private startTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private userphoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->iconPathString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->showShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->lambda$onCreate$292()V

    return-void
.end method

.method private getCutScreen()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;-><init>()V

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->rlShareBitmap:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->getBitmappath(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->iconPathString:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private initDate()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 70
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v4

    .line 71
    .local v4, "loginUser":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 72
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->userphoto:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->dncodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 76
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SLEEP_DATE_INFO"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "dateInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepDate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SLEEP_START_TIME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "start":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->startTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SLEEP_END_TIME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "end":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->endTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SLEEP_DURATION"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 89
    .local v2, "duration":I
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v2, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    rem-int/lit8 v6, v2, 0x3c

    if-ge v6, v10, :cond_2

    .line 91
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v2, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SLEEP_DEEP_DURATION"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, "deep_duration":I
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v1, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    rem-int/lit8 v6, v1, 0x3c

    if-ge v6, v10, :cond_3

    .line 100
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v1, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    return-void

    .line 93
    .end local v1    # "deep_duration":I
    :cond_2
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v8, v2, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    .restart local v1    # "deep_duration":I
    :cond_3
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v8, v1, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f0e02e1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->rlShareBitmap:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f0e02e7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->llShareAppInfo:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0e02c9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->llShareButton:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f0e02e8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->rlShateTitle:Landroid/widget/RelativeLayout;

    .line 121
    const v0, 0x7f0e02e2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->userphoto:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0e0156

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 124
    const v0, 0x7f0e02e9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepDate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 126
    const v0, 0x7f0e029d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 127
    const v0, 0x7f0e029f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 129
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->startTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 130
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->endTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 132
    const v0, 0x7f0e02a2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 133
    const v0, 0x7f0e02a4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 136
    return-void
.end method

.method private synthetic lambda$onCreate$292()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->getCutScreen()V

    return-void
.end method

.method private setListener()V
    .locals 3

    .prologue
    .line 140
    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v1, 0x7f0e0162

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f0e0163

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v1, 0x7f0e02ca

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v1, 0x7f0e02cb

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$5;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method private showShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iconPathString"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 191
    .local v0, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 192
    const-string v1, "Have a look now!"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 194
    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->ExistSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSDFreeSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setFilePath(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 200
    if-eqz p2, :cond_1

    .line 201
    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 203
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;-><init>()V

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 204
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->initView()V

    .line 63
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->initDate()V

    .line 64
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->setListener()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 66
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f04009d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;->setContentView(I)V

    .line 57
    return-void
.end method
