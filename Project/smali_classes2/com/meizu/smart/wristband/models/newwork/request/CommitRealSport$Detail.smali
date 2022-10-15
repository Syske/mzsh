.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;
.super Ljava/lang/Object;
.source "CommitRealSport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detail"
.end annotation


# instance fields
.field public calorie:Ljava/lang/Float;

.field public distance:Ljava/lang/Integer;

.field public endTime:Ljava/lang/String;

.field public foreland:Ljava/lang/Integer;

.field public freq:Ljava/lang/Integer;

.field public heartrates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;",
            ">;"
        }
    .end annotation
.end field

.field public location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;",
            ">;"
        }
    .end annotation
.end field

.field public pace:Ljava/lang/Integer;

.field public speed:Ljava/lang/Integer;

.field public startTime:Ljava/lang/String;

.field public step:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
