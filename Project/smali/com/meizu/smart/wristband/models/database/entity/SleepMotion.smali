.class public Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "SleepMotion.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final TABLE:Ljava/lang/String;


# instance fields
.field private Sleep:Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private time:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private value:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->TABLE:Ljava/lang/String;

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
.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSleep()Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->Sleep:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->id:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method public setSleep(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 0
    .param p1, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->Sleep:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 42
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->time:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;->value:Ljava/lang/Integer;

    .line 58
    return-void
.end method
