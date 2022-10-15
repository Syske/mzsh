.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;
.super Ljava/lang/Object;
.source "CommitRealSport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public direct:Ljava/lang/Integer;

.field public latitude:D

.field public longitude:D

.field public speed:Ljava/lang/Integer;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
