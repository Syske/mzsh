.class public Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
.super Landroid/widget/TextView;
.source "BaseTextView.java"


# instance fields
.field private mIsNumber:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/meizu/smart/wristband/R$styleable;->BaseTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/meizu/smart/wristband/R$styleable;->BaseTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->mIsNumber:Z

    .line 47
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->mIsNumber:Z

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/FontUtil;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/utils/FontUtil;

    sget-object v1, Lcom/meizu/smart/wristband/utils/FontUtil;->dinproTypeface:Landroid/graphics/Typeface;

    .line 49
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setIncludeFontPadding(Z)V

    .line 57
    :goto_0
    return-void

    .line 52
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 53
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/FontUtil;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/utils/FontUtil;

    sget-object v1, Lcom/meizu/smart/wristband/utils/FontUtil;->flymeTypeface:Landroid/graphics/Typeface;

    .line 54
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setIncludeFontPadding(Z)V

    goto :goto_0
.end method
