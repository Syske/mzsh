.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;
.super Ljava/lang/Object;
.source "CommitSportData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detail"
.end annotation


# instance fields
.field private calorie:Ljava/lang/Float;

.field private distance:Ljava/lang/Integer;

.field private endTime:Ljava/lang/String;

.field private livenCode:Ljava/lang/String;

.field private mode:Ljava/lang/Integer;

.field private startTime:Ljava/lang/String;

.field private state:Ljava/lang/Integer;

.field private step:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalorie()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->calorie:Ljava/lang/Float;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->distance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLivenCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->livenCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->state:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStep()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->step:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCalorie(Ljava/lang/Float;)V
    .locals 0
    .param p1, "calorie"    # Ljava/lang/Float;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->calorie:Ljava/lang/Float;

    .line 115
    return-void
.end method

.method public setDistance(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/Integer;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->distance:Ljava/lang/Integer;

    .line 107
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->endTime:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLivenCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "livenCode"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->livenCode:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->mode:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->startTime:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setState(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->state:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method public setStep(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "step"    # Ljava/lang/Integer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->step:Ljava/lang/Integer;

    .line 82
    return-void
.end method
