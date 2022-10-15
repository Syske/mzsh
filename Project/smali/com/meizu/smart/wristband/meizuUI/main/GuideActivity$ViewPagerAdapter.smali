.class Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->mViews:Ljava/util/ArrayList;

    .line 205
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 237
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 224
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 225
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$ViewPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 231
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
