.class public Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;
.super Ljava/lang/Object;
.source "HeartRateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeartRateItem"
.end annotation


# instance fields
.field public endTime:Ljava/util/Date;

.field public rate:Ljava/lang/String;

.field public startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
