.class Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$3;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;I)V

    .line 163
    return-void
.end method
