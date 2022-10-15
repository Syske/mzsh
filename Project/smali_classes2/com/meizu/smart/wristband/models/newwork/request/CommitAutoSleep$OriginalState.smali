.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;
.super Ljava/lang/Object;
.source "CommitAutoSleep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginalState"
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private isValid:I

.field private startTime:Ljava/lang/String;

.field private stateCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stateCyc:I

.field private stateNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsValid()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->isValid:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->stateCode:Ljava/util/List;

    return-object v0
.end method

.method public getStateCyc()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->stateCyc:I

    return v0
.end method

.method public getStateNum()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->stateNum:I

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->endTime:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setIsValid(I)V
    .locals 0
    .param p1, "isValid"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->isValid:I

    .line 133
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->startTime:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setStateCode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "stateCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->stateCode:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setStateCyc(I)V
    .locals 0
    .param p1, "stateCyc"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->stateCyc:I

    .line 125
    return-void
.end method

.method public setStateNum(I)V
    .locals 0
    .param p1, "stateNum"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->stateNum:I

    .line 117
    return-void
.end method
