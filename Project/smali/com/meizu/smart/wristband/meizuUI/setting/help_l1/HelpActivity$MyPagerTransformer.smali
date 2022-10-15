.class Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 72
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 80
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 83
    :cond_1
    cmpg-float v0, p2, v2

    if-gtz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity$MyPagerTransformer;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/help_l1/HelpActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
