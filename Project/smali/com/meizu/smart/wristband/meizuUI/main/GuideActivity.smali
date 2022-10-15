.class public Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final PHOTO_CHANGE_TIME:I = 0x7d0


# instance fields
.field private final AUTO_MSG:I

.field private currentIndex:I

.field private gudie_finishBtn:Landroid/widget/Button;

.field private guideViewAdapter:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;

.field private guideViewPager:Landroid/support/v4/view/ViewPager;

.field private final images:[I

.field private index:I

.field private mHandler:Landroid/os/Handler;

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private points:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->images:[I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->AUTO_MSG:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->index:I

    .line 55
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mHandler:Landroid/os/Handler;

    .line 199
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x7f0201b2
        0x7f0201b3
        0x7f0201b4
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->index:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->index:I

    return p1
.end method

.method static synthetic access$008(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->index:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewAdapter:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->gotoNext()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->setCurDot(I)V

    return-void
.end method

.method private gotoNext()V
    .locals 3

    .prologue
    .line 107
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 108
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-nez v1, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 111
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getIsEmpty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .restart local v0    # "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initPoint(I)V
    .locals 5
    .param p1, "views"    # I

    .prologue
    const/4 v4, 0x0

    .line 83
    const v2, 0x7f0e0283

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 85
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-array v2, p1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 90
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 92
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->currentIndex:I

    .line 102
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method private setCurDot(I)V
    .locals 2
    .param p1, "positon"    # I

    .prologue
    .line 181
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->points:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    const v4, 0x7f0e0282

    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewPager:Landroid/support/v4/view/ViewPager;

    .line 124
    const v4, 0x7f0e0284

    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->gudie_finishBtn:Landroid/widget/Button;

    .line 126
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->gudie_finishBtn:Landroid/widget/Button;

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$2;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mViews:Ljava/util/ArrayList;

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, "li":Landroid/view/LayoutInflater;
    const v4, 0x7f0400aa

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "view1":Landroid/view/View;
    const v4, 0x7f0400ab

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, "view2":Landroid/view/View;
    const v4, 0x7f0400ac

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "view3":Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mViews:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewAdapter:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;

    .line 152
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewAdapter:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->guideViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$3;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 175
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->initView()V

    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->initPoint(I)V

    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f04008d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->setContentView(I)V

    .line 77
    return-void
.end method
