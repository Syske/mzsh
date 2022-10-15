.class public Lcom/meizu/smart/wristband/models/database/entity/BtDev;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "BtDev.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final MAC:Ljava/lang/String; = "mac"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;

.field public static final TYPE_CODE:Ljava/lang/String; = "typeCode"


# instance fields
.field private coreVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private mac:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nordicVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private productor:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private productorname:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private typeCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
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
    .line 13
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->TABLE:Ljava/lang/String;

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
.method public getCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->coreVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getNordicVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->nordicVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->productor:Ljava/lang/String;

    return-object v0
.end method

.method public getProductorname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->productorname:Ljava/lang/String;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->typeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public setCoreVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "coreVersion"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->coreVersion:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->id:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->mac:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setNordicVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "nordicVersion"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->nordicVersion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setProductor(Ljava/lang/String;)V
    .locals 0
    .param p1, "productor"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->productor:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setProductorname(Ljava/lang/String;)V
    .locals 0
    .param p1, "productorname"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->productorname:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->sync:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeCode"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->typeCode:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 60
    return-void
.end method
