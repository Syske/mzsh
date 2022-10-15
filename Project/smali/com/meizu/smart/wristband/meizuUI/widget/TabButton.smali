.class public Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;
.super Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;
.source "TabButton.java"


# instance fields
.field private normal_bg_res:I

.field private selected_bg_res:I

.field private selected_text_color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v1, Lcom/meizu/smart/wristband/R$styleable;->TabButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->normal_bg_res:I

    .line 28
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->selected_bg_res:I

    .line 31
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->selected_bg_res:I

    .line 34
    const/4 v1, 0x2

    const v2, -0x8e7c09

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->selected_text_color:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->selected_bg_res:I

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setBackgroundResource(I)V

    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setTextColor(I)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->normal_bg_res:I

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setBackgroundResource(I)V

    .line 51
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->selected_text_color:I

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setTextColor(I)V

    goto :goto_0
.end method
