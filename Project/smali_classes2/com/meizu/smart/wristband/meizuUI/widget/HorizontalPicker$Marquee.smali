.class final Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;
.super Landroid/os/Handler;
.source "HorizontalPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_PIXELS_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RESOLUTION:I = 0x21

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B = 0x0t

.field private static final MESSAGE_RESTART:I = 0x3

.field private static final MESSAGE_START:I = 0x1

.field private static final MESSAGE_TICK:I = 0x2


# instance fields
.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private final mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private mRepeatLimit:I

.field private mRtl:Z

.field private mScroll:F

.field private final mScrollUnit:F

.field private mStatus:B

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;Landroid/text/Layout;Z)V
    .locals 4
    .param p1, "v"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
    .param p2, "l"    # Landroid/text/Layout;
    .param p3, "rtl"    # Z

    .prologue
    .line 1086
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1073
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    .line 1087
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1088
    .local v0, "density":F
    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42040000    # 33.0f

    div-float v1, v2, v3

    .line 1089
    .local v1, "scrollUnit":F
    if-eqz p3, :cond_0

    .line 1090
    neg-float v2, v1

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScrollUnit:F

    .line 1095
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 1096
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mLayout:Ljava/lang/ref/WeakReference;

    .line 1097
    iput-boolean p3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRtl:Z

    .line 1098
    return-void

    .line 1092
    :cond_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScrollUnit:F

    goto :goto_0
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 1154
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    .line 1155
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .line 1156
    .local v0, "view":Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 1157
    :cond_0
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostOffset:F

    return v0
.end method

.method getMaxFadeScroll()F
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method getScroll()F
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    .line 1102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1104
    :pswitch_0
    iput-byte v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    .line 1105
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->tick()V

    goto :goto_0

    .line 1108
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->tick()V

    goto :goto_0

    .line 1111
    :pswitch_2
    iget-byte v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    if-ne v0, v1, :cond_0

    .line 1112
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRepeatLimit:I

    if-ltz v0, :cond_1

    .line 1113
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRepeatLimit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRepeatLimit:I

    .line 1115
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRepeatLimit:I

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->start(I)V

    goto :goto_0

    .line 1102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 1209
    iget-byte v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStopped()Z
    .locals 1

    .prologue
    .line 1213
    iget-byte v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldDrawGhost()Z
    .locals 2

    .prologue
    .line 1205
    iget-byte v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldDrawLeftFade()Z
    .locals 2

    .prologue
    .line 1201
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method start(I)V
    .locals 9
    .param p1, "repeatLimit"    # I

    .prologue
    const/4 v8, 0x1

    .line 1160
    if-nez p1, :cond_1

    .line 1161
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->stop()V

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRepeatLimit:I

    .line 1165
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .line 1166
    .local v4, "view":Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Layout;

    .line 1167
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 1168
    iput-byte v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    .line 1169
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    .line 1170
    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$400(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v3

    .line 1171
    .local v3, "textWidth":I
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 1172
    .local v2, "lineWidth":F
    int-to-float v5, v3

    const/high16 v6, 0x40400000    # 3.0f

    div-float v0, v5, v6

    .line 1173
    .local v0, "gap":F
    int-to-float v5, v3

    sub-float v5, v2, v5

    add-float/2addr v5, v0

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostStart:F

    .line 1174
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostStart:F

    int-to-float v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mMaxScroll:F

    .line 1175
    add-float v5, v2, v0

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostOffset:F

    .line 1176
    int-to-float v5, v3

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mFadeStop:F

    .line 1177
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostStart:F

    add-float/2addr v5, v2

    add-float/2addr v5, v2

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mMaxFadeScroll:F

    .line 1179
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRtl:Z

    if-eqz v5, :cond_2

    .line 1180
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostOffset:F

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mGhostOffset:F

    .line 1183
    :cond_2
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 1184
    const-wide/16 v6, 0x4b0

    invoke-virtual {p0, v8, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1146
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    .line 1147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->removeMessages(I)V

    .line 1148
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->removeMessages(I)V

    .line 1149
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->removeMessages(I)V

    .line 1150
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->resetScroll()V

    .line 1151
    return-void
.end method

.method tick()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 1122
    iget-byte v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mStatus:B

    if-eq v2, v4, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->removeMessages(I)V

    .line 1128
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .line 1129
    .local v1, "view":Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    .line 1130
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    :cond_2
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScrollUnit:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    .line 1132
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mMaxScroll:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1133
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mMaxScroll:F

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    .line 1134
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mRtl:Z

    if-eqz v2, :cond_3

    .line 1135
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->mScroll:F

    .line 1137
    :cond_3
    const/4 v2, 0x3

    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->sendEmptyMessageDelayed(IJ)Z

    .line 1141
    :goto_1
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    goto :goto_0

    .line 1139
    :cond_4
    const-wide/16 v2, 0x21

    invoke-virtual {p0, v4, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
