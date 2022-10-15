.class public Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "HeartRate.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TPYE:Ljava/lang/String; = "type"

.field public static final TPYE_ALLDAY:Ljava/lang/Integer;

.field public static final TPYE_RUNTIME:Ljava/lang/Integer;

.field public static final TPYE_STATIC:Ljava/lang/Integer;


# instance fields
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

.field private time:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
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

.field private value:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TABLE:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_STATIC:Ljava/lang/Integer;

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    .line 23
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_RUNTIME:Ljava/lang/Integer;

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
    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->id:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->sync:Ljava/lang/Boolean;

    .line 79
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->time:Ljava/util/Date;

    .line 63
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->type:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 55
    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->value:Ljava/lang/Integer;

    .line 71
    return-void
.end method
