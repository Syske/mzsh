.class public Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;
.super Ljava/lang/Object;
.source "SportListdata.java"


# instance fields
.field private calorie:F

.field private distance:I

.field private endTime:Ljava/lang/String;

.field private gmode:I

.field private livenCode:Ljava/lang/String;

.field private location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Location;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/lang/String;

.field private state:I

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalorie()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->calorie:F

    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->distance:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGmode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->gmode:I

    return v0
.end method

.method public getLivenCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->livenCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->location:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->state:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->step:I

    return v0
.end method

.method public setCalorie(F)V
    .locals 0
    .param p1, "calorie"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->calorie:F

    .line 71
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->distance:I

    .line 63
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->endTime:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setGmode(I)V
    .locals 0
    .param p1, "gmode"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->gmode:I

    .line 87
    return-void
.end method

.method public setLivenCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "livenCode"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->livenCode:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLocation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/Location;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->location:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->startTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->state:I

    .line 30
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->step:I

    .line 38
    return-void
.end method
