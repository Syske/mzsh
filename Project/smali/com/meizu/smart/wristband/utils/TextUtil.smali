.class public Lcom/meizu/smart/wristband/utils/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextEnableStyle(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "flag"    # Z

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 17
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 18
    check-cast v1, Landroid/widget/TextView;

    .line 19
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    if-eqz p1, :cond_2

    .line 21
    const-string v3, "#E6000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 27
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-static {v2, p1}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 15
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    .restart local v1    # "textView":Landroid/widget/TextView;
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    const-string v3, "#4D000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 30
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public static setTextEnableStyle(Landroid/view/ViewGroup;ZII)V
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "flag"    # Z
    .param p2, "enableColor"    # I
    .param p3, "disableColor"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 39
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 46
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-static {v2, p1}, Lcom/meizu/smart/wristband/utils/TextUtil;->setTextEnableStyle(Landroid/view/ViewGroup;Z)V

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .restart local v1    # "textView":Landroid/widget/TextView;
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 49
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method
