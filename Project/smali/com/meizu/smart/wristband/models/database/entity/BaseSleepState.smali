.class public Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "BaseSleepState.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final END_TIME:Ljava/lang/String; = "endTime"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final TIME:Ljava/lang/String; = "startTime"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
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

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private stateCode:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
            ">;"
        }
    .end annotation
.end field

.field private stateCyc:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private stateNum:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStateCode()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->stateCode:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getStateCyc()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->stateCyc:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStateNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->stateNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->endTime:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->id:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->startTime:Ljava/util/Date;

    .line 61
    return-void
.end method

.method public setStateCode(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "stateCode":Lcom/j256/ormlite/dao/ForeignCollection;, "Lcom/j256/ormlite/dao/ForeignCollection<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->stateCode:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 93
    return-void
.end method

.method public setStateCyc(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "stateCyc"    # Ljava/lang/Integer;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->stateCyc:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public setStateNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "stateNum"    # Ljava/lang/Integer;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->stateNum:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->sync:Ljava/lang/Boolean;

    .line 53
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 101
    return-void
.end method
