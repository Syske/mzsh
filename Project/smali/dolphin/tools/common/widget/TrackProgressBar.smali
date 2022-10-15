.class public Ldolphin/tools/common/widget/TrackProgressBar;
.super Landroid/view/View;
.source "TrackProgressBar.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# instance fields
.field private final ANIM_INTERVAL:I

.field private final RATE:D

.field private barBgBorderColor:Ljava/lang/Integer;

.field private barBgColor:Ljava/lang/Integer;

.field private barHeight:I

.field private barWidth:I

.field private fillColor:Ljava/lang/Integer;

.field private fillShadeColor:Ljava/lang/Integer;

.field private haloRadius:I

.field private handler:Landroid/os/Handler;

.field private maxProgress:I

.field private progress:I

.field private progress1:I

.field private rect:Landroid/graphics/RectF;

.field private trackWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-wide v2, 0x3fd999999999999aL    # 0.4

    iput-wide v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->RATE:D

    .line 28
    iput v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress:I

    .line 29
    iput v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress1:I

    .line 31
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    .line 144
    const/16 v1, 0xa

    iput v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->ANIM_INTERVAL:I

    .line 146
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Ldolphin/tools/common/widget/TrackProgressBar$1;

    invoke-direct {v2, p0}, Ldolphin/tools/common/widget/TrackProgressBar$1;-><init>(Ldolphin/tools/common/widget/TrackProgressBar;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->handler:Landroid/os/Handler;

    .line 35
    sget-object v1, Ldolphin/tools/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "attributes":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_trackWidth:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    .line 38
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_haloRadius:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->haloRadius:I

    .line 39
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_maxProgress:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->maxProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    throw v1
.end method

.method static synthetic access$0(Ldolphin/tools/common/widget/TrackProgressBar;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress:I

    return v0
.end method

.method static synthetic access$1(Ldolphin/tools/common/widget/TrackProgressBar;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress1:I

    return v0
.end method

.method static synthetic access$2(Ldolphin/tools/common/widget/TrackProgressBar;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress:I

    return-void
.end method

.method static synthetic access$3(Ldolphin/tools/common/widget/TrackProgressBar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawBarBg(Landroid/graphics/Canvas;[Landroid/graphics/RectF;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rects"    # [Landroid/graphics/RectF;

    .prologue
    const/4 v9, 0x1

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 272
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 273
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 275
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->haloRadius:I

    int-to-float v0, v0

    const/16 v1, 0xe5

    const/16 v2, 0xff

    const/16 v7, 0x93

    invoke-static {v1, v2, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v5, v0, v8, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 278
    :cond_0
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    int-to-float v6, v0

    .line 280
    .local v6, "barBgWidth":F
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 282
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getBarBgColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    aget-object v1, p2, v4

    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 285
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    aget-object v0, p2, v9

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getBarBgColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    const/4 v0, 0x2

    aget-object v1, p2, v0

    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 290
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 292
    return-void
.end method

.method private drawBarFill(Landroid/graphics/Canvas;[Landroid/graphics/RectF;I)V
    .locals 52
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rects"    # [Landroid/graphics/RectF;
    .param p3, "progress"    # I

    .prologue
    .line 165
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    int-to-float v7, v2

    .line 168
    .local v7, "barBgWidth":F
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    const/16 v2, 0xf8

    const/16 v3, 0xa3

    const/16 v4, 0x96

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 171
    .local v8, "c1":I
    const/16 v2, 0x29

    const/16 v3, 0xe2

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    .line 172
    .local v9, "c2":I
    const/16 v2, 0xbd

    const/16 v3, 0xd2

    const/16 v4, 0x59

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    .line 173
    .local v19, "c3":I
    const/16 v2, 0xa1

    const/16 v3, 0xe3

    const/16 v4, 0x47

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v29

    .line 175
    .local v29, "c4":I
    if-lez p3, :cond_0

    .line 176
    const-wide/16 v10, 0x0

    .line 177
    .local v10, "rate1":D
    const/16 v2, 0xa

    move/from16 v0, p3

    if-ge v0, v2, :cond_5

    .line 178
    move/from16 v0, p3

    int-to-double v2, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double v10, v2, v12

    .line 181
    :goto_0
    const/4 v2, 0x0

    aget-object v6, p2, v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarFill1(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V

    .line 183
    .end local v10    # "rate1":D
    :cond_0
    const/16 v2, 0xa

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 184
    const-wide/16 v20, 0x0

    .line 185
    .local v20, "rate2":D
    const/16 v2, 0x28

    move/from16 v0, p3

    if-ge v0, v2, :cond_6

    .line 186
    add-int/lit8 v2, p3, -0xa

    int-to-double v2, v2

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double v20, v2, v12

    .line 189
    :goto_1
    const/4 v2, 0x1

    aget-object v16, p2, v2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v13 .. v21}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarFill2(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V

    .line 191
    .end local v20    # "rate2":D
    :cond_1
    const/16 v2, 0x28

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    .line 192
    const-wide/16 v30, 0x0

    .line 193
    .local v30, "rate3":D
    const/16 v2, 0x3c

    move/from16 v0, p3

    if-ge v0, v2, :cond_7

    .line 194
    add-int/lit8 v2, p3, -0x28

    int-to-double v2, v2

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    div-double v30, v2, v12

    .line 197
    :goto_2
    const/4 v2, 0x2

    aget-object v26, p2, v2

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v19

    invoke-direct/range {v23 .. v31}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarFill3(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V

    .line 199
    .end local v30    # "rate3":D
    :cond_2
    const/16 v2, 0x3c

    move/from16 v0, p3

    if-le v0, v2, :cond_3

    .line 200
    const-wide/16 v40, 0x0

    .line 201
    .local v40, "rate4":D
    const/16 v2, 0x5a

    move/from16 v0, p3

    if-ge v0, v2, :cond_8

    .line 202
    add-int/lit8 v2, p3, -0x3c

    int-to-double v2, v2

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double v40, v2, v12

    .line 205
    :goto_3
    const/4 v2, 0x3

    aget-object v36, p2, v2

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v35, v5

    move/from16 v37, v7

    move/from16 v38, v29

    move/from16 v39, v9

    invoke-direct/range {v33 .. v41}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarFill4(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V

    .line 207
    .end local v40    # "rate4":D
    :cond_3
    const/16 v2, 0x5a

    move/from16 v0, p3

    if-le v0, v2, :cond_4

    .line 208
    const-wide/16 v50, 0x0

    .line 209
    .local v50, "rate5":D
    const/16 v2, 0x64

    move/from16 v0, p3

    if-ge v0, v2, :cond_9

    .line 210
    add-int/lit8 v2, p3, -0x5a

    int-to-double v2, v2

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double v50, v2, v12

    .line 213
    :goto_4
    const/4 v2, 0x0

    aget-object v46, p2, v2

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move-object/from16 v45, v5

    move/from16 v47, v7

    move/from16 v48, v8

    move/from16 v49, v9

    invoke-direct/range {v43 .. v51}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarFill5(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V

    .line 215
    .end local v50    # "rate5":D
    :cond_4
    return-void

    .line 180
    .restart local v10    # "rate1":D
    :cond_5
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 188
    .end local v10    # "rate1":D
    .restart local v20    # "rate2":D
    :cond_6
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    .line 196
    .end local v20    # "rate2":D
    .restart local v30    # "rate3":D
    :cond_7
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 204
    .end local v30    # "rate3":D
    .restart local v40    # "rate4":D
    :cond_8
    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 212
    .end local v40    # "rate4":D
    .restart local v50    # "rate5":D
    :cond_9
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    goto :goto_4
.end method

.method private drawBarFill1(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "barBgWidth"    # F
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "rate"    # D

    .prologue
    .line 218
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 220
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, p4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 221
    .local v0, "shader1":Landroid/graphics/Shader;
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 222
    const/high16 v3, -0x3ccc0000    # -180.0f

    const-wide v4, 0x4056800000000000L    # 90.0

    mul-double v4, v4, p7

    double-to-float v4, v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 223
    return-void
.end method

.method private drawBarFill2(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "barBgWidth"    # F
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "rate"    # D

    .prologue
    .line 226
    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, p4, v1

    .line 227
    .local v9, "radius":F
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 229
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 230
    .local v10, "rectF":Landroid/graphics/RectF;
    iget v1, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v9

    iput v1, v10, Landroid/graphics/RectF;->left:F

    .line 231
    iget v1, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v9

    iput v1, v10, Landroid/graphics/RectF;->right:F

    .line 232
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    .line 233
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v5, p5

    move/from16 v6, p6

    .line 232
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 234
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 235
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    float-to-double v2, v1

    mul-double v2, v2, p7

    double-to-float v8, v2

    .line 237
    .local v8, "a":F
    iget v1, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/RectF;->right:F

    .line 238
    invoke-virtual {p1, v10, v9, v9, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 239
    return-void
.end method

.method private drawBarFill3(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "barBgWidth"    # F
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "rate"    # D

    .prologue
    .line 242
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 244
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p3, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 245
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 246
    const/high16 v3, -0x3d4c0000    # -90.0f

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v4, v4, p7

    double-to-float v4, v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method private drawBarFill4(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "barBgWidth"    # F
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "rate"    # D

    .prologue
    .line 250
    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, p4, v1

    .line 251
    .local v8, "radius":F
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 253
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 254
    .local v9, "rectF":Landroid/graphics/RectF;
    iget v1, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v8

    iput v1, v9, Landroid/graphics/RectF;->left:F

    .line 255
    iget v1, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v8

    iput v1, v9, Landroid/graphics/RectF;->right:F

    .line 256
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x0

    .line 257
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v5, p5

    move/from16 v6, p6

    .line 256
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 258
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 259
    iget v1, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p7

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v9, Landroid/graphics/RectF;->left:F

    .line 260
    invoke-virtual {p1, v9, v8, v8, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 261
    return-void
.end method

.method private drawBarFill5(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FIID)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "barBgWidth"    # F
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "rate"    # D

    .prologue
    .line 264
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 266
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, p4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 267
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 268
    const/high16 v3, 0x42b40000    # 90.0f

    const-wide v4, 0x4056800000000000L    # 90.0

    mul-double v4, v4, p7

    double-to-float v4, v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 269
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 101
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 103
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 104
    move v0, v2

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 107
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 108
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 86
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 87
    move v0, v2

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 90
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 91
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized refreshProgress()V
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBarBgBorderColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 356
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 357
    const/16 v0, 0xb4

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    .line 359
    :cond_0
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBarBgColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/16 v1, 0xf3

    .line 345
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 346
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgColor:Ljava/lang/Integer;

    .line 348
    :cond_0
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBarHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barHeight:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barWidth:I

    return v0
.end method

.method public getFillColor()I
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 318
    const/16 v0, 0xfc

    const/16 v1, 0x2a

    const/16 v2, 0x97

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillColor:Ljava/lang/Integer;

    .line 320
    :cond_0
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillColor2()I
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getFillColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillColor:Ljava/lang/Integer;

    .line 326
    const/16 v1, -0x32

    .line 328
    .local v1, "offset":I
    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ldolphin/tools/util/ColorUtil;->offset(II)I

    move-result v0

    .line 329
    .local v0, "color2":I
    return v0
.end method

.method public getFillShadeColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 333
    const/16 v0, -0x32

    .line 334
    .local v0, "offset":I
    iget-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillShadeColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 335
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getFillColor2()I

    move-result v1

    invoke-static {v1, v0}, Ldolphin/tools/util/ColorUtil;->offset(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillShadeColor:Ljava/lang/Integer;

    .line 337
    :cond_0
    iget-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillShadeColor:Ljava/lang/Integer;

    return-object v1
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->maxProgress:I

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 116
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/graphics/RectF;

    .line 119
    .local v0, "rects":[Landroid/graphics/RectF;
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    .line 120
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 121
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    iget-object v4, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 122
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 123
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 124
    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    .line 125
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 126
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    iget-object v4, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 127
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 128
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 129
    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    .line 130
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 131
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 132
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 133
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 134
    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    .line 135
    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 136
    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 137
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 138
    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Ldolphin/tools/common/widget/TrackProgressBar;->trackWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 140
    invoke-direct {p0, p1, v0}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarBg(Landroid/graphics/Canvas;[Landroid/graphics/RectF;)V

    .line 141
    iget v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress:I

    invoke-direct {p0, p1, v0, v1}, Ldolphin/tools/common/widget/TrackProgressBar;->drawBarFill(Landroid/graphics/Canvas;[Landroid/graphics/RectF;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 116
    .end local v0    # "rects":[Landroid/graphics/RectF;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 47
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 49
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getWidth()I

    move-result v0

    iput v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barWidth:I

    .line 51
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barHeight:I

    .line 57
    :goto_0
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getWidth()I

    move-result v1

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->haloRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 58
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getHeight()I

    move-result v1

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->haloRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 59
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->haloRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 60
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/TrackProgressBar;->haloRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 61
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->getHeight()I

    move-result v0

    iput v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barHeight:I

    .line 54
    iget v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barHeight:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barWidth:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ldolphin/tools/common/widget/TrackProgressBar;->measureWidth(I)I

    move-result v0

    .line 78
    invoke-direct {p0, p2}, Ldolphin/tools/common/widget/TrackProgressBar;->measureHeight(I)I

    move-result v1

    .line 77
    invoke-virtual {p0, v0, v1}, Ldolphin/tools/common/widget/TrackProgressBar;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method public setBarBgBorderColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "barBgBorderColor"    # Ljava/lang/Integer;

    .prologue
    .line 363
    iput-object p1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    .line 364
    return-void
.end method

.method public setBarBgColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "barBgColor"    # Ljava/lang/Integer;

    .prologue
    .line 352
    iput-object p1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->barBgColor:Ljava/lang/Integer;

    .line 353
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillColor:Ljava/lang/Integer;

    .line 314
    return-void
.end method

.method public setFillShadeColor(I)V
    .locals 1
    .param p1, "fillShadeColor"    # I

    .prologue
    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar;->fillShadeColor:Ljava/lang/Integer;

    .line 342
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 299
    iput p1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->maxProgress:I

    .line 300
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ldolphin/tools/common/widget/TrackProgressBar;->progress1:I

    .line 304
    invoke-direct {p0}, Ldolphin/tools/common/widget/TrackProgressBar;->refreshProgress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
