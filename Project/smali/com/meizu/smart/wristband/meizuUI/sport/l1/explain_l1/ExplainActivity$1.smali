.class Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;
.super Ljava/lang/Object;
.source "ExplainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 114
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const-string v1, "offset:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 128
    float-to-double v2, p2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .line 129
    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v1, v4

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 147
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 133
    sub-float v1, v5, p2

    neg-float v1, v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .line 134
    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .line 135
    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v1, v4

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    if-ne v1, v4, :cond_3

    if-ne p1, v4, :cond_3

    .line 139
    float-to-double v2, p2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .line 140
    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v1, v4

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-ne p1, v4, :cond_0

    .line 143
    sub-float v1, v5, p2

    neg-float v1, v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .line 144
    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v1

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    .line 145
    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v1, v4

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const v1, -0xffff01

    .line 152
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)V

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$102(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;I)I

    .line 165
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/sport/l1/explain_l1/ExplainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
