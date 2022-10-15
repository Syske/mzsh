.class public Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
.super Ljava/lang/Object;
.source "OriginalState.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field private isValid:I

.field private startTime:Ljava/lang/String;

.field private stateCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stateCyc:I

.field private stateInterval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stateNum:I


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
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsValid()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->isValid:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateCode:Ljava/util/List;

    return-object v0
.end method

.method public getStateCyc()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateCyc:I

    return v0
.end method

.method public getStateInterval()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateInterval:Ljava/util/List;

    return-object v0
.end method

.method public getStateNum()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateNum:I

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->endTime:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setIsValid(I)V
    .locals 0
    .param p1, "isValid"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->isValid:I

    .line 63
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->startTime:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setStateCode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "stateCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateCode:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setStateCyc(I)V
    .locals 0
    .param p1, "stateCyc"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateCyc:I

    .line 55
    return-void
.end method

.method public setStateInterval(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "stateInterval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateInterval:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setStateNum(I)V
    .locals 0
    .param p1, "stateNum"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->stateNum:I

    .line 47
    return-void
.end method
