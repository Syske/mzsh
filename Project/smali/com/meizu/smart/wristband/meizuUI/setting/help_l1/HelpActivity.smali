.class public Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;,
        Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;
    }
.end annotation


# instance fields
.field private dis:F

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private point:Landroid/widget/ImageView;

.field private screenWidth:I

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 31
    const v0, 0x41ab3333    # 21.4f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->dis:F

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->dis:F

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->point:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->fragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->lambda$initListener$277(Ljava/lang/Void;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 65
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->fragments:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment2;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpFragment2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 53
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 54
    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->point:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->screenWidth:I

    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->point:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    return-void
.end method

.method private synthetic lambda$initListener$277(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->back()V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->initView()V

    .line 44
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->initListener()V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->back()V

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->setContentView(I)V

    .line 38
    return-void
.end method
