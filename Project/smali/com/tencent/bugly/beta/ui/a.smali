.class public abstract Lcom/tencent/bugly/beta/ui/a;
.super Lcom/tencent/bugly/beta/ui/b;
.source "BUGLY"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/LinearLayout;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/LinearLayout;

.field protected i:Lcom/tencent/bugly/beta/global/ResBean;

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/bugly/beta/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/beta/ui/a;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 330
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/b;->a()V

    .line 361
    :goto_0
    return-void

    .line 334
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 335
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 336
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/bugly/beta/ui/a$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/bugly/beta/ui/a$2;-><init>(Lcom/tencent/bugly/beta/ui/a;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    new-instance v1, Lcom/tencent/bugly/beta/ui/a$3;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/beta/ui/a$3;-><init>(Lcom/tencent/bugly/beta/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7

    .prologue
    .line 291
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/bugly/beta/ui/a$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/beta/ui/a$1;-><init>(Lcom/tencent/bugly/beta/ui/a;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->i:Lcom/tencent/bugly/beta/global/ResBean;

    .line 63
    iget v0, p0, Lcom/tencent/bugly/beta/ui/a;->k:I

    if-nez v0, :cond_4

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 67
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    const/16 v0, 0x10

    .line 73
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    .line 74
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v4, 0x438c0000    # 280.0f

    invoke-static {v3, v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 80
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget v2, p0, Lcom/tencent/bugly/beta/ui/a;->j:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 83
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v2

    .line 85
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x7

    int-to-float v2, v2

    aput v2, v3, v4

    .line 87
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 88
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 90
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 100
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->i:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "#273238"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/16 v2, 0x12

    .line 102
    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v2

    .line 107
    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 109
    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v4, v5}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 110
    iget-object v3, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    const-string v4, "beta_title"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 113
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 115
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 118
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 123
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 125
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/tencent/bugly/beta/ui/d;

    const/4 v7, 0x3

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/tencent/bugly/beta/ui/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 129
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/bugly/beta/ui/a;->h:Landroid/widget/LinearLayout;

    .line 130
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/a;->h:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    iget-object v5, p0, Lcom/tencent/bugly/beta/ui/a;->h:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v2, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 135
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/16 v1, 0x11

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v1, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 143
    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    div-int/lit8 v2, v2, 0x2

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 144
    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    .line 145
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    const-string v6, "beta_cancel_button"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v6, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v6

    .line 153
    iget v7, p0, Lcom/tencent/bugly/beta/ui/a;->j:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 154
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    iget-object v8, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    int-to-double v8, v6

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
    :goto_0
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    .line 168
    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->i:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "#273238"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 173
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v1, v7}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v9, 0x41200000    # 10.0f

    .line 174
    invoke-static {v8, v9}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v9, v10}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v9

    .line 173
    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 176
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    const-string v1, "beta_confirm_button"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 182
    iget v1, p0, Lcom/tencent/bugly/beta/ui/a;->j:I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 183
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    div-int/lit8 v2, v6, 0x2

    div-int/lit8 v7, v6, 0x2

    div-int/lit8 v8, v6, 0x2

    div-int/lit8 v9, v6, 0x2

    invoke-virtual {v1, v2, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 186
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v0, v7

    div-int/lit8 v8, v6, 0x2

    sub-int v8, v0, v8

    invoke-virtual {v2, v7, v0, v8, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 188
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget v0, p0, Lcom/tencent/bugly/beta/ui/a;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 208
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 210
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 214
    div-int/lit8 v8, v6, 0x2

    .line 215
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    const v1, -0x333334

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    int-to-float v1, v8

    int-to-float v2, v8

    int-to-float v3, v8

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    const/high16 v1, 0x42340000    # 45.0f

    int-to-float v2, v8

    int-to-float v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 219
    const v1, -0x777778

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v9

    .line 222
    int-to-float v1, v8

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    sub-int v2, v8, v9

    int-to-float v2, v2

    int-to-float v3, v8

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v3, v4

    add-int v4, v8, v9

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 223
    sub-int v1, v8, v9

    int-to-float v1, v1

    int-to-float v2, v8

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-int v3, v8, v9

    int-to-float v3, v3

    int-to-float v4, v8

    const v10, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 226
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 227
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    const v1, -0x777778

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    int-to-float v1, v8

    int-to-float v2, v8

    int-to-float v3, v8

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    const/high16 v1, 0x42340000    # 45.0f

    int-to-float v2, v8

    int-to-float v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 231
    const v1, -0x333334

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    int-to-float v1, v8

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    sub-int v2, v8, v9

    int-to-float v2, v2

    int-to-float v3, v8

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v3, v4

    add-int v4, v8, v9

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    sub-int v1, v8, v9

    int-to-float v1, v1

    int-to-float v2, v8

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-int v3, v8, v9

    int-to-float v3, v3

    int-to-float v4, v8

    const v8, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 236
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v2, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    new-instance v3, Lcom/tencent/bugly/beta/global/c;

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/tencent/bugly/beta/global/c;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 248
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 249
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 264
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 265
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 267
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    return-object v0

    .line 159
    :cond_2
    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    int-to-float v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 161
    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/tencent/bugly/beta/ui/a;->i:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "#757575"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v7, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v8, v9}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v9, v10}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41200000    # 10.0f

    .line 163
    invoke-static {v10, v11}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v10

    iget-object v11, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v11, v12}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v11

    .line 162
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 192
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 251
    :cond_4
    iget v0, p0, Lcom/tencent/bugly/beta/ui/a;->k:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    const-string v1, "beta_upgrade_banner"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->d:Landroid/widget/ImageView;

    .line 253
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    const-string v1, "beta_title"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    const-string v1, "beta_cancel_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    const-string v1, "beta_confirm_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-super {p0}, Lcom/tencent/bugly/beta/ui/b;->onDestroyView()V

    .line 273
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->a:Landroid/content/Context;

    .line 274
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->b:Landroid/view/View;

    .line 275
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->c:Landroid/widget/LinearLayout;

    .line 276
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->e:Landroid/widget/TextView;

    .line 277
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->f:Landroid/widget/TextView;

    .line 278
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->g:Landroid/widget/TextView;

    .line 279
    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/a;->h:Landroid/widget/LinearLayout;

    .line 280
    return-void
.end method
