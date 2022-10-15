.class public Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ExplainActivity.java"


# instance fields
.field private currentIndex:I

.field private fragment1:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment1;

.field private fragment2:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment2;

.field private fragment3:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment3;

.field private mFragmentAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/FragmentAdapter;

.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPageVp:Landroid/support/v4/view/ViewPager;

.field private mTabChatTv:Landroid/widget/TextView;

.field private mTabContactsTv:Landroid/widget/TextView;

.field private mTabFriendTv:Landroid/widget/TextView;

.field private mTabLineIv:Landroid/widget/ImageView;

.field private screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabLineIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->currentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->currentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->screenWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->resetTextView()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabChatTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabFriendTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabContactsTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->lambda$steListener$298(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->lambda$steListener$299(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->lambda$steListener$300(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->lambda$steListener$301(Ljava/lang/Void;)V

    return-void
.end method

.method private findById()V
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabContactsTv:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabChatTv:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabFriendTv:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabLineIv:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    .line 82
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment1;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment1;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->fragment1:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment1;

    .line 86
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment2;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment2;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->fragment2:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment2;

    .line 87
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment3;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment3;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->fragment3:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment3;

    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->fragment1:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->fragment2:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->fragment3:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/Fragment3;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/FragmentAdapter;

    .line 93
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/FragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/FragmentAdapter;

    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mFragmentAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/FragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 97
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 168
    return-void
.end method

.method private initTabLineWidth()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 175
    .local v0, "dpMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 177
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->screenWidth:I

    .line 178
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabLineIv:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->screenWidth:I

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 181
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabLineIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method

.method private synthetic lambda$steListener$298(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$steListener$299(Ljava/lang/Void;)V
    .locals 3
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private synthetic lambda$steListener$300(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private synthetic lambda$steListener$301(Ljava/lang/Void;)V
    .locals 3
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mPageVp:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private resetTextView()V
    .locals 2

    .prologue
    const/high16 v1, -0x1000000

    .line 188
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabChatTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabFriendTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->mTabContactsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    return-void
.end method

.method private steListener()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 66
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 69
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 72
    const v0, 0x7f0e009c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->findById()V

    .line 56
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->init()V

    .line 57
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->initTabLineWidth()V

    .line 59
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->steListener()V

    .line 60
    return-void
.end method
