.class public Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
.super Ljava/lang/Object;
.source "DBSportApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/servers/DBSportApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SportItem"
.end annotation


# instance fields
.field public calorie:F

.field public distance:F

.field public duration:I

.field public endTime:Ljava/util/Date;

.field public startTime:Ljava/util/Date;

.field public step:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
