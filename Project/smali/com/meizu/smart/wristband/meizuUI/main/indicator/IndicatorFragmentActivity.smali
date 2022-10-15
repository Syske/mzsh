.class public abstract Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "IndicatorFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;,
        Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_QUIT:Ljava/lang/String; = "extra.quit"

.field public static final EXTRA_TAB:Ljava/lang/String; = "tab"

.field private static final TAG:Ljava/lang/String; = "DxFragmentActivity"


# instance fields
.field protected mCurrentTab:I

.field protected mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

.field protected mLastTab:I

.field protected mPager:Landroid/support/v4/view/ViewPager;

.field protected mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mLastTab:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    .line 277
    return-void
.end method

.method private final initViews()V
    .locals 5

    .prologue
    .line 129
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->supplyTabs(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    .line 130
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 132
    const-string v1, "tab"

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    .line 134
    :cond_0
    const-string v1, "DxFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTabs.size() == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    .line 137
    const v1, 0x7f0e0286

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 138
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 139
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 140
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 142
    const v1, 0x7f0e0285

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    .line 143
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->init(ILjava/util/ArrayList;Landroid/support/v4/view/ViewPager;)V

    .line 145
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 146
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mLastTab:I

    .line 148
    return-void
.end method

.method private updateTabColor()V
    .locals 5

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 205
    .local v2, "resource":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    .line 206
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 207
    .local v1, "mTextColor":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 208
    .local v0, "mFootColor":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    invoke-virtual {v3, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->changeFooterAndTextColor(ILandroid/content/res/ColorStateList;)V

    .line 209
    return-void
.end method


# virtual methods
.method public MoveToFirst()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 158
    return-void
.end method

.method public addTabInfo(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;)V
    .locals 1
    .param p1, "tab"    # Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public addTabInfos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.method protected getFragmentById(I)Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    .locals 5
    .param p1, "tabId"    # I

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 224
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 225
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 226
    .local v2, "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->getId()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "tab":Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    :cond_2
    move-object v2, v3

    .line 230
    goto :goto_0
.end method

.method public getIndicator()Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    return-object v0
.end method

.method protected getMainViewResId()I
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f040092

    return v0
.end method

.method public navigate(I)V
    .locals 3
    .param p1, "tabId"    # I

    .prologue
    .line 239
    const/4 v1, 0x0

    .local v1, "index":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 240
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->finish()V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->initViews()V

    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mTabs:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;->notifyDataSetChanged()V

    .line 119
    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->myAdapter:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$MyAdapter;

    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 121
    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 122
    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    .line 124
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mLastTab:I

    .line 215
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->refreshListView(IZ)V

    .line 217
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 186
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    if-le v0, p1, :cond_1

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    sub-int/2addr v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->onScrolled(F)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    if-ne v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->onScrolled(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mIndicator:Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->onSwitched(I)V

    .line 199
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->mCurrentTab:I

    .line 200
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->updateTabColor()V

    .line 201
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    return-void
.end method

.method protected abstract refreshListView(IZ)V
.end method

.method protected abstract supplyTabs(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;)I"
        }
    .end annotation
.end method
