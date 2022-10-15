.class public Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "GainEvent.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CN_MSG:Ljava/lang/String; = "cnMsg"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final EN_MSG:Ljava/lang/String; = "enMsg"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final TABLE:Ljava/lang/String;

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private cnMsg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private datapath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private enMsg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private type1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type2:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getCnMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->cnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDatapath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->datapath:Ljava/lang/String;

    return-object v0
.end method

.method public getEnMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->enMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->type1:Ljava/lang/String;

    return-object v0
.end method

.method public getType2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->type2:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCnMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnMsg"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->cnMsg:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->code:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDatapath(Ljava/lang/String;)V
    .locals 0
    .param p1, "datapath"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->datapath:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setEnMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "enMsg"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->enMsg:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->id:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public setType1(Ljava/lang/String;)V
    .locals 0
    .param p1, "type1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->type1:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setType2(Ljava/lang/String;)V
    .locals 0
    .param p1, "type2"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->type2:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->url:Ljava/lang/String;

    .line 91
    return-void
.end method
