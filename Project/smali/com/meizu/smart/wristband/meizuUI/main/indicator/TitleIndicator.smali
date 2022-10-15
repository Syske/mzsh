.class public Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;
.super Landroid/widget/LinearLayout;
.source "TitleIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final FOOTER_COLOR:I = -0x3bbb

.field private static final FOOTER_LINE_HEIGHT:F = 4.0f

.field private static final FOOTER_TRIANGLE_HEIGHT:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "TitleFlowIndicator"


# instance fields
.field private final BSSEEID:I

.field private DEBUG:Z

.field private mChangeOnClick:Z

.field private mContext:Landroid/content/Context;

.field private mCurrID:I

.field private mCurrentScroll:I

.field private mFooterLineHeight:F

.field private mFooterTriangleHeight:F

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMovePercent:F

.field private mPaintFooterLine:Landroid/graphics/Paint;

.field private mPaintFooterTriangle:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field public mPerItemWidth:I

.field private mSelectedTab:I

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSizeNormal:F

.field private mTextSizeSelected:F

.field private mTotal:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->DEBUG:Z

    .line 51
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrentScroll:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mMovePercent:F

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPath:Landroid/graphics/Path;

    .line 80
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    .line 84
    const v0, 0xffff00

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->BSSEEID:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mChangeOnClick:Z

    .line 89
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrID:I

    .line 92
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    .line 95
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTotal:I

    .line 104
    const/high16 v0, 0x40800000    # 4.0f

    const/16 v1, -0x3bbb

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->initDraw(FI)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->DEBUG:Z

    .line 51
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrentScroll:I

    .line 53
    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mMovePercent:F

    .line 68
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPath:Landroid/graphics/Path;

    .line 80
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    .line 84
    const v2, 0xffff00

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->BSSEEID:I

    .line 87
    iput-boolean v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mChangeOnClick:Z

    .line 89
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrID:I

    .line 92
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    .line 95
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTotal:I

    .line 115
    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mContext:Landroid/content/Context;

    .line 119
    sget-object v2, Lcom/meizu/smart/wristband/R$styleable;->TitleIndicator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x6

    const/16 v3, -0x3bbb

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 124
    .local v1, "footerColor":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextColor:Landroid/content/res/ColorStateList;

    .line 125
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeNormal:F

    .line 127
    const/4 v2, 0x4

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeNormal:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeSelected:F

    .line 129
    const/4 v2, 0x5

    const/high16 v3, 0x40800000    # 4.0f

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterLineHeight:F

    .line 132
    const/4 v2, 0x7

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterTriangleHeight:F

    .line 136
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterLineHeight:F

    invoke-direct {p0, v2, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->initDraw(FI)V

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    return-void
.end method

.method private getIcon(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "ret":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->getIcon()I

    move-result v0

    .line 223
    :cond_0
    return v0
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    return-object v0
.end method

.method private hasTips(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-boolean v0, v1, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->hasTips:Z

    .line 231
    :cond_0
    return v0
.end method

.method private initDraw(FI)V
    .locals 2
    .param p1, "footerLineHeight"    # F
    .param p2, "footerColor"    # I

    .prologue
    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterTriangle:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterTriangle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterTriangle:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterTriangle:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mInflater:Landroid/view/LayoutInflater;

    .line 154
    return-void
.end method

.method private setTabTextSize(Landroid/view/View;Z)V
    .locals 3
    .param p1, "tab"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 357
    const v1, 0x7f0e0342

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    .local v0, "tv":Landroid/widget/TextView;
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeSelected:F

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 360
    return-void

    .line 358
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeNormal:F

    goto :goto_0
.end method


# virtual methods
.method protected add(ILjava/lang/String;IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "hasTips"    # Z

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400c0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "tabIndicator":Landroid/view/View;
    const v4, 0x7f0e0342

    .line 279
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 280
    .local v3, "tv":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    const v4, 0x7f0e0344

    .line 281
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 282
    .local v2, "tips":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 283
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 286
    :cond_0
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeNormal:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 287
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextSizeNormal:F

    invoke-virtual {v3, v6, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTextSize(IF)V

    .line 290
    :cond_1
    invoke-virtual {v3, p2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    if-lez p3, :cond_2

    .line 292
    invoke-virtual {v3, v6, p3, v6, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 295
    :cond_2
    if-eqz p4, :cond_3

    .line 296
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :goto_0
    const v4, 0xffff00

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrID:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrID:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 302
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .local v0, "lP":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 307
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->addView(Landroid/view/View;)V

    .line 309
    return-void

    .line 298
    .end local v0    # "lP":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeFooterAndTextColor(ILandroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "footerColor"    # I
    .param p2, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 158
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterLineHeight:F

    invoke-direct {p0, v3, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->initDraw(FI)V

    .line 159
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTextColor:Landroid/content/res/ColorStateList;

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "child":Landroid/view/View;
    const v3, 0x7f0e0342

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->invalidate()V

    .line 167
    return-void
.end method

.method public getChangeOnClick()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mChangeOnClick:Z

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildCount()I

    move-result v0

    .line 331
    .local v0, "children":I
    return v0
.end method

.method public init(ILjava/util/ArrayList;Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "startPos"    # I
    .param p3, "mViewPager"    # Landroid/support/v4/view/ViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;>;"
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->removeAllViews()V

    .line 252
    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 253
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTabs:Ljava/util/List;

    .line 254
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTotal:I

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTotal:I

    if-ge v0, v1, :cond_0

    .line 256
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getIcon(I)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->hasTips(I)Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->add(ILjava/lang/String;IZ)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setCurrentTab(I)V

    .line 259
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->invalidate()V

    .line 260
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0xffff00

    sub-int v0, v1, v2

    .line 326
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setCurrentTab(I)V

    .line 327
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40400000    # 3.0f

    .line 175
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    const/4 v6, 0x0

    .line 178
    .local v6, "scroll_x":F
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTotal:I

    if-eqz v9, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mTotal:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    .line 180
    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    .line 183
    .local v7, "tabID":I
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mMovePercent:F

    mul-float v6, v9, v10

    .line 190
    .end local v7    # "tabID":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPath:Landroid/graphics/Path;

    .line 191
    .local v3, "path":Landroid/graphics/Path;
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "offset":F
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v9, v2

    add-float v1, v9, v6

    .line 194
    .local v1, "left_x":F
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v9, v2

    add-float v5, v9, v6

    .line 195
    .local v5, "right_x":F
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterLineHeight:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterTriangleHeight:F

    sub-float v8, v9, v10

    .line 196
    .local v8, "top_y":F
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mFooterLineHeight:F

    sub-float v0, v9, v10

    .line 198
    .local v0, "bottom_y":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v8, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 199
    .local v4, "rect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPaintFooterTriangle:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v11, v11, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 200
    return-void

    .line 185
    .end local v0    # "bottom_y":F
    .end local v1    # "left_x":F
    .end local v2    # "offset":F
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "rect":Landroid/graphics/RectF;
    .end local v5    # "right_x":F
    .end local v8    # "top_y":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getWidth()I

    move-result v9

    iput v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mPerItemWidth:I

    .line 186
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mCurrentScroll:I

    int-to-float v6, v9

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 364
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 365
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    if-eqz p2, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getTabCount()I

    move-result v1

    .line 372
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 374
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setCurrentTab(I)V

    goto :goto_0

    .line 377
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 384
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 389
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offestPercent"    # F

    .prologue
    .line 236
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mMovePercent:F

    .line 237
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->invalidate()V

    .line 238
    return-void
.end method

.method public declared-synchronized onSwitched(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 247
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setCurrentTab(I)V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setChangeOnClick(Z)V
    .locals 0
    .param p1, "changeOnClick"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mChangeOnClick:Z

    .line 317
    return-void
.end method

.method public declared-synchronized setCurrentTab(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 336
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getTabCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt p1, v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "oldTab":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 341
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setTabTextSize(Landroid/view/View;Z)V

    .line 343
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    .line 344
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "newTab":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 346
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->setTabTextSize(Landroid/view/View;Z)V

    .line 347
    const v2, 0x7f0e0344

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    .line 348
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 353
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v0    # "newTab":Landroid/view/View;
    .end local v1    # "oldTab":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setDisplayedPage(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->mSelectedTab:I

    .line 313
    return-void
.end method

.method public updateChildTips(IZ)V
    .locals 3
    .param p1, "postion"    # I
    .param p2, "showTips"    # Z

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, "child":Landroid/view/View;
    const v2, 0x7f0e0344

    .line 265
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 266
    .local v1, "tips":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
