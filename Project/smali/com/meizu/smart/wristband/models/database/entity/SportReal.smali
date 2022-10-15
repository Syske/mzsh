.class public Lcom/meizu/smart/wristband/models/database/entity/SportReal;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "SportReal.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private avgHeart:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private calorie:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private distance:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private endTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private freq:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private freqland:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private pace:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private speed:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private stepCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvgHeart()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->avgHeart:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCalorie()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->calorie:Ljava/lang/Float;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->distance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFreq()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->freq:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFreqland()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->freqland:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPace()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->pace:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->pace:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpeed()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->speed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStepCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->stepCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public setAvgHeart(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "avgHeart"    # Ljava/lang/Integer;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->avgHeart:Ljava/lang/Integer;

    .line 155
    return-void
.end method

.method public setCalorie(Ljava/lang/Float;)V
    .locals 0
    .param p1, "calorie"    # Ljava/lang/Float;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->calorie:Ljava/lang/Float;

    .line 115
    return-void
.end method

.method public setDistance(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/Integer;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->distance:Ljava/lang/Integer;

    .line 107
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->endTime:Ljava/util/Date;

    .line 83
    return-void
.end method

.method public setFreq(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "freq"    # Ljava/lang/Integer;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->freq:Ljava/lang/Integer;

    .line 123
    return-void
.end method

.method public setFreqland(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "freqland"    # Ljava/lang/Integer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->freqland:Ljava/lang/Integer;

    .line 131
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->id:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setPace(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pace"    # Ljava/lang/Integer;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->pace:Ljava/lang/Integer;

    .line 139
    return-void
.end method

.method public setSpeed(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/Integer;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->speed:Ljava/lang/Integer;

    .line 147
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->startTime:Ljava/util/Date;

    .line 75
    return-void
.end method

.method public setStepCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "stepCount"    # Ljava/lang/Integer;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->stepCount:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->sync:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->type:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 67
    return-void
.end method
