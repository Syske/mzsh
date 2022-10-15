.class public Lcom/meizu/smart/wristband/models/database/entity/Sleep;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "Sleep.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final END_TIME:Ljava/lang/String; = "endTime"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final START_TIME:Ljava/lang/String; = "startTime"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private deepDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dreamDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private endTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private score:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private shallowDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sleepMotions:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
            ">;"
        }
    .end annotation
.end field

.field private sleepStates:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private todayDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private totalDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
    .end annotation
.end field

.field private wakeDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private yestDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeepDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->deepDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDreamDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->dreamDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScore()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->score:Ljava/lang/Float;

    return-object v0
.end method

.method public getShallowDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->shallowDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSleepMotions()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->sleepMotions:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getSleepStates()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->sleepStates:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTodayDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->todayDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->totalDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public getWakeDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->wakeDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYestDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->yestDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDeepDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "deepDuration"    # Ljava/lang/Integer;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->deepDuration:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method public setDreamDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "dreamDuration"    # Ljava/lang/Integer;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->dreamDuration:Ljava/lang/Integer;

    .line 126
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->endTime:Ljava/util/Date;

    .line 150
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->id:Ljava/lang/Integer;

    .line 78
    return-void
.end method

.method public setScore(Ljava/lang/Float;)V
    .locals 0
    .param p1, "score"    # Ljava/lang/Float;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->score:Ljava/lang/Float;

    .line 158
    return-void
.end method

.method public setShallowDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "shallowDuration"    # Ljava/lang/Integer;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->shallowDuration:Ljava/lang/Integer;

    .line 110
    return-void
.end method

.method public setSleepMotions(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "sleepMotions":Lcom/j256/ormlite/dao/ForeignCollection;, "Lcom/j256/ormlite/dao/ForeignCollection<Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->sleepMotions:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 63
    return-void
.end method

.method public setSleepStates(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "sleepStates":Lcom/j256/ormlite/dao/ForeignCollection;, "Lcom/j256/ormlite/dao/ForeignCollection<Lcom/meizu/smart/wristband/models/database/entity/SleepState;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->sleepStates:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 71
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->startTime:Ljava/util/Date;

    .line 142
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->sync:Ljava/lang/Boolean;

    .line 86
    return-void
.end method

.method public setTodayDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "todayDuration"    # Ljava/lang/Integer;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->todayDuration:Ljava/lang/Integer;

    .line 174
    return-void
.end method

.method public setTotalDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "totalDuration"    # Ljava/lang/Integer;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->totalDuration:Ljava/lang/Integer;

    .line 102
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 94
    return-void
.end method

.method public setWakeDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "wakeDuration"    # Ljava/lang/Integer;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->wakeDuration:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public setYestDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "yestDuration"    # Ljava/lang/Integer;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->yestDuration:Ljava/lang/Integer;

    .line 166
    return-void
.end method
