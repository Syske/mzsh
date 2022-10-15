.class public Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;
.super Landroid/widget/Button;
.source "BaseButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/LocaleUtil;->isEn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 34
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/FontUtil;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/utils/FontUtil;

    sget-object v1, Lcom/meizu/smart/wristband/utils/FontUtil;->flymeTypeface:Landroid/graphics/Typeface;

    .line 35
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method
