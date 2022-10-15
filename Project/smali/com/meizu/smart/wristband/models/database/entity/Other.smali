.class public Lcom/meizu/smart/wristband/models/database/entity/Other;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "Other.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Other;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final VALUE:Ljava/lang/String; = "value"


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

.field private type:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->type:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->id:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->sync:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method public setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->type:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    .line 70
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 54
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Other;->value:Ljava/lang/String;

    .line 62
    return-void
.end method
