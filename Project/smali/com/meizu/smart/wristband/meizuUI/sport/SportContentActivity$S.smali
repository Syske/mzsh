.class public Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
.super Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;
.source "SportContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S"
.end annotation


# instance fields
.field public dis:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public endTime:Ljava/util/Date;

.field public heartrate:Ljava/lang/String;

.field public heat:Ljava/lang/String;

.field public speed:Ljava/lang/String;

.field public startTime:Ljava/util/Date;

.field public step:Ljava/lang/String;

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;-><init>()V

    return-void
.end method
