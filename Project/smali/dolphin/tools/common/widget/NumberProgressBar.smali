.class public Ldolphin/tools/common/widget/NumberProgressBar;
.super Landroid/view/View;
.source "NumberProgressBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field public static final INCREASE_INTERVAL_TIME:I = 0x64

.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_REACHED_BAR_COLOR:Ljava/lang/String; = "reached_bar_color"

.field private static final INSTANCE_REACHED_BAR_HEIGHT:Ljava/lang/String; = "reached_bar_height"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_UNREACHED_BAR_COLOR:Ljava/lang/String; = "unreached_bar_color"

.field private static final INSTANCE_UNREACHED_BAR_HEIGHT:Ljava/lang/String; = "unreached_bar_height"

.field private static final PROGRESS_TEXT_INVISIBLE:I = 0x1

.field private static final PROGRESS_TEXT_VISIBLE:I


# instance fields
.field private final CASE_INCREMENT_PROGRESS:I

.field private final default_progress_text_offset:F

.field private final default_reached_bar_height:F

.field private final default_reached_color:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unreached_bar_height:F

.field private final default_unreached_color:I

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDrawText:Ljava/lang/String;

.field private mDrawReachedBar:Z

.field private mDrawTextEnd:F

.field private mDrawTextStart:F

.field private mDrawTextWidth:F

.field private mDrawUnreachedBar:Z

.field private mIfDrawText:Z

.field private mMax:I

.field private mOffset:F

.field private mProgress:I

.field private mReachedBarColor:I

.field private mReachedBarHeight:F

.field private mReachedBarPaint:Landroid/graphics/Paint;

.field private mReachedRectF:Landroid/graphics/RectF;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnreachedBarColor:I

.field private mUnreachedBarHeight:F

.field private mUnreachedBarPaint:Landroid/graphics/Paint;

.field private mUnreachedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/tools/common/widget/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    sget v0, Ldolphin/tools/R$attr;->numberProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Ldolphin/tools/common/widget/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v8, 0x42

    const/16 v7, 0xcc

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v2, 0x64

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mMax:I

    .line 26
    iput v5, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mProgress:I

    .line 41
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_text_color:I

    .line 42
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_reached_color:I

    .line 43
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_unreached_color:I

    .line 75
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    .line 76
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    .line 80
    iput-boolean v6, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 82
    iput-boolean v6, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawReachedBar:Z

    .line 84
    iput-boolean v6, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mIfDrawText:Z

    .line 86
    iput v6, p0, Ldolphin/tools/common/widget/NumberProgressBar;->CASE_INCREMENT_PROGRESS:I

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->handler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mContext:Landroid/content/Context;

    .line 122
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->dp2px(F)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_reached_bar_height:F

    .line 123
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->dp2px(F)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_unreached_bar_height:F

    .line 124
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->sp2px(F)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_text_size:F

    .line 125
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->dp2px(F)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_progress_text_offset:F

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Ldolphin/tools/R$styleable;->NumberProgressBar:[I

    invoke-virtual {v2, p2, v3, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_reached_color:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_reached_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    .line 132
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_unreached_color:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_unreached_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarColor:I

    .line 133
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_text_color:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_text_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextColor:I

    .line 134
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_text_size:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_text_size:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    .line 136
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_reached_bar_height:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_reached_bar_height:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    .line 137
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_unreached_bar_height:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_unreached_bar_height:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    .line 138
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_text_offset:I

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->default_progress_text_offset:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mOffset:F

    .line 140
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress_text_visibility:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 141
    .local v1, "textVisible":I
    if-eqz v1, :cond_0

    .line 142
    iput-boolean v5, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mIfDrawText:Z

    .line 145
    :cond_0
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_progress:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->setProgress(I)V

    .line 146
    sget v2, Ldolphin/tools/R$styleable;->NumberProgressBar_max:I

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->setMax(I)V

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-direct {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->initializePainters()V

    .line 152
    return-void
.end method

.method private calculateDrawRectF()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 237
    const-string v1, "%d%%"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextWidth:F

    .line 240
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iput-boolean v6, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawReachedBar:Z

    .line 242
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    .line 252
    :goto_0
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextEnd:F

    .line 254
    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextWidth:F

    sub-float/2addr v1, v2

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    .line 256
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mOffset:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 259
    :cond_0
    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mOffset:F

    add-float v0, v1, v2

    .line 260
    .local v0, "unreachedBarStart":F
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 261
    iput-boolean v6, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 269
    :goto_1
    return-void

    .line 244
    .end local v0    # "unreachedBarStart":F
    :cond_1
    iput-boolean v7, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawReachedBar:Z

    .line 245
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 246
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 247
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 248
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 249
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mOffset:F

    add-float/2addr v1, v2

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    goto/16 :goto_0

    .line 263
    .restart local v0    # "unreachedBarStart":F
    :cond_2
    iput-boolean v7, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 264
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 265
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 266
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 267
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private calculateDrawRectFWithoutProgressText()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 224
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 225
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 226
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 227
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 229
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 230
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 231
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 232
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 233
    return-void
.end method

.method private initializePainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    .line 215
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    return-void
.end method

.method private measure(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 172
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 173
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 174
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    .line 175
    move v2, v3

    .line 187
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 173
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 177
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    .line 178
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 179
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 180
    if-eqz p2, :cond_4

    .line 181
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 182
    goto :goto_1

    .line 177
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 183
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public dp2px(F)F
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 395
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 396
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 161
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    float-to-int v1, v1

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextColor:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarColor:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 92
    :pswitch_0
    invoke-virtual {p0, v2}, Ldolphin/tools/common/widget/NumberProgressBar;->incrementProgressBy(I)V

    .line 93
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 94
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v0}, Ldolphin/tools/common/widget/NumberProgressBar;->setProgress(ZI)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "by"    # I

    .prologue
    .line 336
    if-lez p1, :cond_0

    .line 337
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ldolphin/tools/common/widget/NumberProgressBar;->setProgress(I)V

    .line 339
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    iget-boolean v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_3

    .line 193
    invoke-direct {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->calculateDrawRectF()V

    .line 198
    :goto_0
    iget-boolean v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawReachedBar:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    :cond_0
    iget-boolean v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    :cond_1
    iget-boolean v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mDrawTextEnd:F

    iget-object v3, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 208
    :cond_2
    return-void

    .line 195
    :cond_3
    invoke-direct {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->calculateDrawRectFWithoutProgressText()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldolphin/tools/common/widget/NumberProgressBar;->measure(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Ldolphin/tools/common/widget/NumberProgressBar;->measure(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldolphin/tools/common/widget/NumberProgressBar;->setMeasuredDimension(II)V

    .line 167
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 377
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 378
    check-cast v0, Landroid/os/Bundle;

    .line 379
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextColor:I

    .line 380
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    .line 381
    const-string v1, "reached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarHeight:F

    .line 382
    const-string v1, "unreached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarHeight:F

    .line 383
    const-string v1, "reached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    .line 384
    const-string v1, "unreached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarColor:I

    .line 385
    invoke-direct {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->initializePainters()V

    .line 386
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ldolphin/tools/common/widget/NumberProgressBar;->setMax(I)V

    .line 387
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ldolphin/tools/common/widget/NumberProgressBar;->setProgress(I)V

    .line 388
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 392
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    const-string v1, "text_color"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    const-string v1, "text_size"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 366
    const-string v1, "reached_bar_height"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getReachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 367
    const-string v1, "unreached_bar_height"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getUnreachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 368
    const-string v1, "reached_bar_color"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getReachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    const-string v1, "unreached_bar_color"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getUnreachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    const-string v1, "max"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    const-string v1, "progress"

    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    return-object v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "Max"    # I

    .prologue
    .line 329
    if-lez p1, :cond_0

    .line 330
    iput p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mMax:I

    .line 331
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 333
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "Progress"    # I

    .prologue
    .line 342
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 343
    iput p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mProgress:I

    .line 344
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 346
    :cond_0
    return-void
.end method

.method public setProgress(ZI)V
    .locals 4
    .param p1, "anim"    # Z
    .param p2, "progress"    # I

    .prologue
    const/4 v2, 0x1

    .line 349
    if-eqz p1, :cond_0

    .line 350
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 351
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 352
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 353
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0, p2}, Ldolphin/tools/common/widget/NumberProgressBar;->setProgress(I)V

    .line 356
    iget-object v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setProgressTextColor(I)V
    .locals 2
    .param p1, "TextColor"    # I

    .prologue
    .line 311
    iput p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextColor:I

    .line 312
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 314
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2
    .param p1, "TextSize"    # F

    .prologue
    .line 305
    iput p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    .line 306
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 307
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 308
    return-void
.end method

.method public setProgressTextVisibility(Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;)V
    .locals 1
    .param p1, "visibility"    # Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    .prologue
    .line 405
    sget-object v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->Visible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mIfDrawText:Z

    .line 410
    :goto_0
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 411
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mIfDrawText:Z

    goto :goto_0
.end method

.method public setReachedBarColor(I)V
    .locals 2
    .param p1, "ProgressColor"    # I

    .prologue
    .line 323
    iput p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    .line 324
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 326
    return-void
.end method

.method public setUnreachedBarColor(I)V
    .locals 2
    .param p1, "BarColor"    # I

    .prologue
    .line 317
    iput p1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarColor:I

    .line 318
    iget-object v0, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldolphin/tools/common/widget/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->invalidate()V

    .line 320
    return-void
.end method

.method public sp2px(F)F
    .locals 2
    .param p1, "sp"    # F

    .prologue
    .line 400
    invoke-virtual {p0}, Ldolphin/tools/common/widget/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 401
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method
