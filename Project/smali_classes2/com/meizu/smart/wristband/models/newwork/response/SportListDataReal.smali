.class public Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;
.super Ljava/lang/Object;
.source "SportListDataReal.java"


# instance fields
.field private calorie:F

.field private distance:I

.field private endTime:Ljava/lang/String;

.field private foreland:I

.field private freq:I

.field private gmode:I

.field private heartrates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;"
        }
    .end annotation
.end field

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

.field private pace:I

.field private speed:I

.field private startTime:Ljava/lang/String;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalorie()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->calorie:F

    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->distance:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getForeland()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->foreland:I

    return v0
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->freq:I

    return v0
.end method

.method public getGmode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->gmode:I

    return v0
.end method

.method public getHeartrates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->heartrates:Ljava/util/List;

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
    .line 105
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->location:Ljava/util/List;

    return-object v0
.end method

.method public getPace()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->pace:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->speed:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->step:I

    return v0
.end method

.method public setCalorie(F)V
    .locals 0
    .param p1, "calorie"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->calorie:F

    .line 70
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->distance:I

    .line 54
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->endTime:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setForeland(I)V
    .locals 0
    .param p1, "foreland"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->foreland:I

    .line 94
    return-void
.end method

.method public setFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->freq:I

    .line 86
    return-void
.end method

.method public setGmode(I)V
    .locals 0
    .param p1, "gmode"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->gmode:I

    .line 102
    return-void
.end method

.method public setHeartrates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "heartrates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->heartrates:Ljava/util/List;

    .line 118
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
    .line 109
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/Location;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->location:Ljava/util/List;

    .line 110
    return-void
.end method

.method public setPace(I)V
    .locals 0
    .param p1, "pace"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->pace:I

    .line 78
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->speed:I

    .line 46
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->startTime:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->step:I

    .line 62
    return-void
.end method
