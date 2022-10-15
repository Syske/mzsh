.class public Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;
.super Landroid/widget/LinearLayout;
.source "RefreshableView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;,
        Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;,
        Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;
    }
.end annotation


# static fields
.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_MONTH:J = 0x9a7ec800L

.field public static final ONE_YEAR:J = 0x73df16000L

.field public static final SCROLL_SPEED:I = -0x14

.field public static final STATUS_PULL_TO_REFRESH:I = 0x0

.field public static final STATUS_REFRESHING:I = 0x2

.field public static final STATUS_REFRESH_FINISHED:I = 0x3

.field public static final STATUS_RELEASE_TO_REFRESH:I = 0x1

.field private static final UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private ableToPull:Z

.field private arrow:Landroid/widget/ImageView;

.field private currentStatus:I

.field private description:Landroid/widget/TextView;

.field fromNumber:I

.field private header:Landroid/view/View;

.field private headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private hideHeaderHeight:I

.field private lastStatus:I

.field private lastUpdateTime:J

.field private listView:Landroid/widget/ListView;

.field private loadOnce:Z

.field private mId:I

.field private mListener:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;

.field private mState:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private progressBar:Landroid/widget/ProgressBar;

.field private speed:F

.field private touchSlop:I

.field private updateAt:Landroid/widget/TextView;

.field valueAnimator:Landroid/animation/ValueAnimator;

.field private yDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mId:I

    .line 122
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    .line 127
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->lastStatus:I

    .line 145
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->speed:F

    .line 320
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->fromNumber:I

    .line 160
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->preferences:Landroid/content/SharedPreferences;

    .line 161
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->progressBar:Landroid/widget/ProgressBar;

    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->description:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->updateAt:Landroid/widget/TextView;

    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->touchSlop:I

    .line 167
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->refreshUpdatedAtValue()V

    .line 168
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->setOrientation(I)V

    .line 169
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->addView(Landroid/view/View;I)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->sleep(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mListener:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 25
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    return v0
.end method

.method private refreshUpdatedAtValue()V
    .locals 12

    .prologue
    .line 403
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->preferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updated_at"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->lastUpdateTime:J

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 405
    .local v0, "currentTime":J
    iget-wide v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->lastUpdateTime:J

    sub-long v4, v0, v8

    .line 408
    .local v4, "timePassed":J
    iget-wide v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->lastUpdateTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080204

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "updateAtValue":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->updateAt:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void

    .line 410
    .end local v6    # "updateAtValue":Ljava/lang/String;
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08028f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v6    # "updateAtValue":Ljava/lang/String;
    :cond_1
    const-wide/32 v8, 0xea60

    cmp-long v8, v4, v8

    if-gez v8, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto :goto_0

    .line 414
    .end local v6    # "updateAtValue":Ljava/lang/String;
    :cond_2
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 415
    const-wide/32 v8, 0xea60

    div-long v2, v4, v8

    .line 416
    .local v2, "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08019e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 418
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    .line 419
    const-wide/32 v8, 0x36ee80

    div-long v2, v4, v8

    .line 420
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080131

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 421
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 422
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0

    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    const-wide v8, 0x9a7ec800L

    cmp-long v8, v4, v8

    if-gez v8, :cond_5

    .line 423
    const-wide/32 v8, 0x5265c00

    div-long v2, v4, v8

    .line 424
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0800e5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 425
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 426
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0

    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    const-wide v8, 0x73df16000L

    cmp-long v8, v4, v8

    if-gez v8, :cond_6

    .line 427
    const-wide v8, 0x9a7ec800L

    div-long v2, v4, v8

    .line 428
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0801a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 429
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 430
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 431
    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    const-wide v8, 0x73df16000L

    div-long v2, v4, v8

    .line 432
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0801a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 433
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private rotateArrow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 382
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v5, v6

    .line 383
    .local v2, "pivotX":F
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 384
    .local v3, "pivotY":F
    const/4 v1, 0x0

    .line 385
    .local v1, "fromDegrees":F
    const/4 v4, 0x0

    .line 386
    .local v4, "toDegrees":F
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-nez v5, :cond_1

    .line 387
    const/high16 v1, 0x43340000    # 180.0f

    .line 388
    const/high16 v4, 0x43b40000    # 360.0f

    .line 393
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 394
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 395
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 396
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    return-void

    .line 389
    .end local v0    # "animation":Landroid/view/animation/RotateAnimation;
    :cond_1
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-ne v5, v8, :cond_0

    .line 390
    const/4 v1, 0x0

    .line 391
    const/high16 v4, 0x43340000    # 180.0f

    goto :goto_0
.end method

.method private setIsAbleToPull(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 295
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 297
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 298
    .local v1, "firstVisiblePos":I
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_1

    .line 299
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->ableToPull:Z

    if-nez v2, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->yDown:F

    .line 303
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->ableToPull:Z

    .line 315
    .end local v1    # "firstVisiblePos":I
    :goto_0
    return-void

    .line 305
    .restart local v1    # "firstVisiblePos":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    if-eq v2, v3, :cond_2

    .line 306
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 307
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_2
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->ableToPull:Z

    goto :goto_0

    .line 313
    .end local v1    # "firstVisiblePos":I
    :cond_3
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->ableToPull:Z

    goto :goto_0
.end method

.method private sleep(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 527
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateHeaderView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 357
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->lastStatus:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-eq v0, v1, :cond_1

    .line 358
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 362
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->rotateArrow()V

    .line 374
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->refreshUpdatedAtValue()V

    .line 376
    :cond_1
    return-void

    .line 363
    :cond_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 367
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->rotateArrow()V

    goto :goto_0

    .line 368
    :cond_3
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 372
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public finishRefreshing()V
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    .line 269
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated_at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    return-void
.end method

.method public finishRefreshingWithError()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 286
    return-void
.end method

.method public isOntheTop()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 439
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 441
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 442
    .local v1, "firstVisiblePos":I
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-nez v4, :cond_1

    .line 448
    .end local v1    # "firstVisiblePos":I
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "firstVisiblePos":I
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 179
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->loadOnce:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    .line 181
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 183
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    .line 184
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->loadOnce:Z

    .line 187
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->setIsAbleToPull(Landroid/view/MotionEvent;)V

    .line 196
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->ableToPull:Z

    if-eqz v4, :cond_2

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 224
    :pswitch_0
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-ne v4, v3, :cond_5

    .line 226
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    new-array v5, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    :cond_0
    :goto_0
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-ne v4, v3, :cond_2

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->updateHeaderView()V

    .line 238
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setPressed(Z)V

    .line 239
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 240
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 241
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->lastStatus:I

    move v2, v3

    .line 246
    :cond_2
    return v2

    .line 199
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->yDown:F

    goto :goto_0

    .line 202
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 203
    .local v1, "yMove":F
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->yDown:F

    sub-float v4, v1, v4

    float-to-int v0, v4

    .line 205
    .local v0, "distance":I
    if-gtz v0, :cond_3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    if-le v4, v5, :cond_2

    .line 208
    :cond_3
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->touchSlop:I

    if-lt v0, v4, :cond_2

    .line 211
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 212
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v4, :cond_4

    .line 213
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    .line 218
    :goto_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v5, v0

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->speed:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->hideHeaderHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 219
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->header:Landroid/view/View;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 215
    :cond_4
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    goto :goto_1

    .line 227
    .end local v0    # "distance":I
    .end local v1    # "yMove":F
    :cond_5
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->currentStatus:I

    if-nez v4, :cond_0

    .line 229
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    new-array v5, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$HideHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshManual()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method

.method public setOnRefreshListener(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;
    .param p2, "id"    # I

    .prologue
    .line 260
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mListener:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;

    .line 261
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mId:I

    .line 262
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->speed:F

    .line 149
    return-void
.end method

.method public updateProgressState(I)V
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 330
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->fromNumber:I

    if-le v0, p1, :cond_0

    .line 331
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->fromNumber:I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 336
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->fromNumber:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 340
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 348
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 349
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->fromNumber:I

    .line 350
    return-void
.end method

.method public updateStateMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "strState"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->mState:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method
