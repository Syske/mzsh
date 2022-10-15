.class public Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "BaseSleepStateCode.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private baseSleepState:Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
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

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private value:Ljava/lang/Byte;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseSleepState()Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->baseSleepState:Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValue()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->value:Ljava/lang/Byte;

    return-object v0
.end method

.method public setBaseSleepState(Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;)V
    .locals 0
    .param p1, "baseSleepState"    # Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->baseSleepState:Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->id:Ljava/lang/Integer;

    .line 32
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->sync:Ljava/lang/Boolean;

    .line 40
    return-void
.end method

.method public setValue(Ljava/lang/Byte;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Byte;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->value:Ljava/lang/Byte;

    .line 51
    return-void
.end method
