.class public Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;
.super Landroid/widget/LinearLayout;
.source "LinearlayoutRefreshableView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;,
        Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;,
        Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;,
        Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;
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

.field private mContext:Landroid/content/Context;

.field private mFinishListener:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;

.field private mId:I

.field private mListener:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;

.field private mPullIndex:I

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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mId:I

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    .line 136
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->lastStatus:I

    .line 152
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->ableToPull:Z

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->speed:F

    .line 351
    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->fromNumber:I

    .line 483
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mPullIndex:I

    .line 169
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->preferences:Landroid/content/SharedPreferences;

    .line 171
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->progressBar:Landroid/widget/ProgressBar;

    .line 173
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->description:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    const v1, 0x7f0e0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateAt:Landroid/widget/TextView;

    .line 176
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->touchSlop:I

    .line 177
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->refreshUpdatedAtValue()V

    .line 178
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->setOrientation(I)V

    .line 179
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->addView(Landroid/view/View;I)V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->sleep(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mFinishListener:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;

    return-object v0
.end method

.method private refreshUpdatedAtValue()V
    .locals 12

    .prologue
    .line 435
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->preferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updated_at"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->lastUpdateTime:J

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 437
    .local v0, "currentTime":J
    iget-wide v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->lastUpdateTime:J

    sub-long v4, v0, v8

    .line 440
    .local v4, "timePassed":J
    iget-wide v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->lastUpdateTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080204

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "updateAtValue":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateAt:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    return-void

    .line 442
    .end local v6    # "updateAtValue":Ljava/lang/String;
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08028f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v6    # "updateAtValue":Ljava/lang/String;
    :cond_1
    const-wide/32 v8, 0xea60

    cmp-long v8, v4, v8

    if-gez v8, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto :goto_0

    .line 446
    .end local v6    # "updateAtValue":Ljava/lang/String;
    :cond_2
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 447
    const-wide/32 v8, 0xea60

    div-long v2, v4, v8

    .line 448
    .local v2, "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08019e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

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

    .line 450
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    .line 451
    const-wide/32 v8, 0x36ee80

    div-long v2, v4, v8

    .line 452
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080131

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 453
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

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

    .line 454
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0

    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    const-wide v8, 0x9a7ec800L

    cmp-long v8, v4, v8

    if-gez v8, :cond_5

    .line 455
    const-wide/32 v8, 0x5265c00

    div-long v2, v4, v8

    .line 456
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0800e5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 457
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

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

    .line 458
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0

    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    const-wide v8, 0x73df16000L

    cmp-long v8, v4, v8

    if-gez v8, :cond_6

    .line 459
    const-wide v8, 0x9a7ec800L

    div-long v2, v4, v8

    .line 460
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0801a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 461
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

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

    .line 462
    .restart local v6    # "updateAtValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 463
    .end local v2    # "timeIntoFormat":J
    .end local v6    # "updateAtValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    const-wide v8, 0x73df16000L

    div-long v2, v4, v8

    .line 464
    .restart local v2    # "timeIntoFormat":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0801a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 465
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

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

    .line 414
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v5, v6

    .line 415
    .local v2, "pivotX":F
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 416
    .local v3, "pivotY":F
    const/4 v1, 0x0

    .line 417
    .local v1, "fromDegrees":F
    const/4 v4, 0x0

    .line 418
    .local v4, "toDegrees":F
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-nez v5, :cond_1

    .line 419
    const/high16 v1, 0x43340000    # 180.0f

    .line 420
    const/high16 v4, 0x43b40000    # 360.0f

    .line 425
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 426
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 427
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 428
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 429
    return-void

    .line 421
    .end local v0    # "animation":Landroid/view/animation/RotateAnimation;
    :cond_1
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-ne v5, v8, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 423
    const/high16 v4, 0x43340000    # 180.0f

    goto :goto_0
.end method

.method private setIsAbleToPull(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 326
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 328
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 329
    .local v1, "firstVisiblePos":I
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_1

    .line 330
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->ableToPull:Z

    if-nez v2, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->yDown:F

    .line 334
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->ableToPull:Z

    .line 346
    .end local v1    # "firstVisiblePos":I
    :goto_0
    return-void

    .line 336
    .restart local v1    # "firstVisiblePos":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    if-eq v2, v3, :cond_2

    .line 337
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    :cond_2
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->ableToPull:Z

    goto :goto_0

    .line 344
    .end local v1    # "firstVisiblePos":I
    :cond_3
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->ableToPull:Z

    goto :goto_0
.end method

.method private sleep(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 571
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateHeaderView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 389
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->lastStatus:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-eq v0, v1, :cond_1

    .line 390
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 394
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->rotateArrow()V

    .line 406
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->refreshUpdatedAtValue()V

    .line 408
    :cond_1
    return-void

    .line 395
    :cond_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 396
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 399
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->rotateArrow()V

    goto :goto_0

    .line 400
    :cond_3
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 404
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public finishRefreshing()V
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    .line 295
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated_at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    return-void
.end method

.method public finishRefreshingWithError()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    return-void
.end method

.method public isOntheTop()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 473
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 474
    .local v1, "firstVisiblePos":I
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-nez v4, :cond_1

    .line 480
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
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x1

    .line 188
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 189
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->loadOnce:Z

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    .line 191
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 196
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 197
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 200
    .local v1, "linearLayout1":Landroid/widget/LinearLayout;
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->loadOnce:Z

    .line 203
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v1    # "linearLayout1":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->ableToPull:Z

    if-eqz v4, :cond_6

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 241
    :pswitch_0
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-ne v4, v3, :cond_5

    .line 243
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-ne v2, v3, :cond_6

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateHeaderView()V

    .line 258
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->lastStatus:I

    move v2, v3

    .line 263
    :cond_2
    :goto_1
    return v2

    .line 215
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->yDown:F

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 219
    .local v1, "yMove":F
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->yDown:F

    sub-float v4, v1, v4

    float-to-int v0, v4

    .line 221
    .local v0, "distance":I
    if-gtz v0, :cond_3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    if-le v4, v5, :cond_2

    .line 225
    :cond_3
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->touchSlop:I

    if-lt v0, v4, :cond_2

    .line 228
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 229
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v4, :cond_4

    .line 230
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    .line 235
    :goto_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v4, v0

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->speed:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->hideHeaderHeight:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 236
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->header:Landroid/view/View;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->headerLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 232
    :cond_4
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    goto :goto_2

    .line 244
    .end local v0    # "distance":I
    .end local v1    # "yMove":F
    :cond_5
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    if-nez v4, :cond_0

    .line 246
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_6
    move v2, v3

    .line 263
    goto :goto_1

    .line 213
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
    .line 268
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->currentStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 269
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    :cond_0
    return-void
.end method

.method public setOnRefreshFinishListener(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;
    .param p2, "id"    # I

    .prologue
    .line 286
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mFinishListener:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;

    .line 287
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mId:I

    .line 288
    return-void
.end method

.method public setOnRefreshListener(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;
    .param p2, "id"    # I

    .prologue
    .line 281
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;

    .line 282
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mId:I

    .line 283
    return-void
.end method

.method public setPullLayoutIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mPullIndex:I

    .line 489
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->speed:F

    .line 158
    return-void
.end method

.method public updateProgressState(I)V
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 362
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->fromNumber:I

    if-le v0, p1, :cond_0

    .line 363
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->fromNumber:I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 368
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 371
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->fromNumber:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 372
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 380
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 381
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->fromNumber:I

    .line 382
    return-void
.end method

.method public updateStateMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "strState"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->mState:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->description:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method
