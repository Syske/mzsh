.class public Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;
.super Ljava/lang/Object;
.source "BaseSleepListdata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sit"
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private stateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;->endTime:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;->startTime:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;->stateCode:Ljava/lang/String;

    .line 40
    return-void
.end method
