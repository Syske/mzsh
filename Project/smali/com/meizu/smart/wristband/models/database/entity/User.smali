.class public Lcom/meizu/smart/wristband/models/database/entity/User;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "User.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/User;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE:Ljava/lang/String;


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private btDevs:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field private isEmpty:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private others:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            ">;"
        }
    .end annotation
.end field

.field private portrait:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private portraitUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sex:Lcom/meizu/smart/wristband/constant/Sex;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
    .end annotation
.end field

.field private weight:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/User;->TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBtDevs()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->btDevs:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->height:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEmpty()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->isEmpty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOthers()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->others:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getPortrait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Lcom/meizu/smart/wristband/constant/Sex;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->sex:Lcom/meizu/smart/wristband/constant/Sex;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->weight:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->address:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->birthday:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setBtDevs(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "btDevs":Lcom/j256/ormlite/dao/ForeignCollection;, "Lcom/j256/ormlite/dao/ForeignCollection<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->btDevs:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 72
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->height:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->id:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setIsEmpty(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isEmpty"    # Ljava/lang/Boolean;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->isEmpty:Ljava/lang/Boolean;

    .line 56
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->nickname:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setOthers(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "others":Lcom/j256/ormlite/dao/ForeignCollection;, "Lcom/j256/ormlite/dao/ForeignCollection<Lcom/meizu/smart/wristband/models/database/entity/Other;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->others:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 64
    return-void
.end method

.method public setPortrait(Ljava/lang/String;)V
    .locals 0
    .param p1, "portrait"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->portrait:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitUrl"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->portraitUrl:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSex(Lcom/meizu/smart/wristband/constant/Sex;)V
    .locals 0
    .param p1, "sex"    # Lcom/meizu/smart/wristband/constant/Sex;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->sex:Lcom/meizu/smart/wristband/constant/Sex;

    .line 152
    return-void
.end method

.method public setSync(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->sync:Ljava/lang/Boolean;

    .line 88
    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/User;->weight:Ljava/lang/String;

    .line 128
    return-void
.end method
