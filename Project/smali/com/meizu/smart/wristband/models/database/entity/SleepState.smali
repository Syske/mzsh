.class public Lcom/meizu/smart/wristband/models/database/entity/SleepState;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "SleepState.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final END_TIME:Ljava/lang/String; = "endTime"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final SLEEP_ID:Ljava/lang/String; = "sleep_id"

.field public static final START_TIME:Ljava/lang/String; = "startTime"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TABLE:Ljava/lang/String;


# instance fields
.field private Sleep:Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
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

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private state:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSleep()Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->Sleep:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->state:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    return-object v0
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->endTime:Ljava/util/Date;

    .line 75
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->id:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public setSleep(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 0
    .param p1, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->Sleep:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 59
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->startTime:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public setState(Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;)V
    .locals 0
    .param p1, "state"    # Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->state:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    .line 83
    return-void
.end method
