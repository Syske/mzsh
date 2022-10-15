.class public Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
.super Ljava/lang/Object;
.source "SleepState.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private stateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->endTime:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->startTime:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->stateCode:Ljava/lang/String;

    .line 22
    return-void
.end method
