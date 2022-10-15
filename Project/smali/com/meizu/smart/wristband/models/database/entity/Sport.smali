.class public Lcom/meizu/smart/wristband/models/database/entity/Sport;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "Sport.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "stepCount"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final RUNCOUNT:Ljava/lang/String; = "runStepCount"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final TIME:Ljava/lang/String; = "startTime"

.field public static final TIMEEND:Ljava/lang/String; = "endTime"

.field public static final TYPECODE:Ljava/lang/String; = "typeCode"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final WALKCOUNT:Ljava/lang/String; = "walkStepCount"


# instance fields
.field private aerobics:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private aerobicsCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private aerobicstime:Ljava/lang/Integer;
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

.field private googlefitSync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private mode:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
    .end annotation
.end field

.field private runStepCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private runtime:Ljava/lang/Integer;
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

.field private time:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private typeCode:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
    .end annotation
.end field

.field private walkStepCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private walktime:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getAerobics()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->aerobics:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAerobicsCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->aerobicsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAerobicstime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->aerobicstime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCalorie()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->calorie:Ljava/lang/Float;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->distance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getGooglefitSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->googlefitSync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRunStepCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->runStepCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRuntime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->runtime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStepCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->stepCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->time:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->typeCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public getWalkStepCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->walkStepCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWalktime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->walktime:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAerobics(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aerobics"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->aerobics:Ljava/lang/Boolean;

    .line 122
    return-void
.end method

.method public setAerobicsCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "aerobicsCount"    # Ljava/lang/Integer;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->aerobicsCount:Ljava/lang/Integer;

    .line 178
    return-void
.end method

.method public setAerobicstime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "aerobicstime"    # Ljava/lang/Integer;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->aerobicstime:Ljava/lang/Integer;

    .line 210
    return-void
.end method

.method public setCalorie(Ljava/lang/Float;)V
    .locals 0
    .param p1, "calorie"    # Ljava/lang/Float;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->calorie:Ljava/lang/Float;

    .line 146
    return-void
.end method

.method public setDistance(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/Integer;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->distance:Ljava/lang/Integer;

    .line 130
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->endTime:Ljava/util/Date;

    .line 106
    return-void
.end method

.method public setGooglefitSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "googlefitSync"    # Ljava/lang/Boolean;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->googlefitSync:Ljava/lang/Boolean;

    .line 218
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->id:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->mode:Ljava/lang/Integer;

    .line 154
    return-void
.end method

.method public setRunStepCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "runStepCount"    # Ljava/lang/Integer;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->runStepCount:Ljava/lang/Integer;

    .line 162
    return-void
.end method

.method public setRuntime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "runtime"    # Ljava/lang/Integer;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->runtime:Ljava/lang/Integer;

    .line 194
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->startTime:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public setStepCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "stepCount"    # Ljava/lang/Integer;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->stepCount:Ljava/lang/Integer;

    .line 114
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->sync:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public setTime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->time:Ljava/lang/Integer;

    .line 186
    return-void
.end method

.method public setTypeCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "typeCode"    # Ljava/lang/Integer;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->typeCode:Ljava/lang/Integer;

    .line 138
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 90
    return-void
.end method

.method public setWalkStepCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "walkStepCount"    # Ljava/lang/Integer;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->walkStepCount:Ljava/lang/Integer;

    .line 170
    return-void
.end method

.method public setWalktime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "walktime"    # Ljava/lang/Integer;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Sport;->walktime:Ljava/lang/Integer;

    .line 202
    return-void
.end method
