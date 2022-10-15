.class public Lcom/meizu/smart/wristband/models/database/entity/Location1;
.super Lcom/j256/ormlite/misc/BaseDaoEnabled;
.source "Location1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/misc/BaseDaoEnabled",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private direct:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private mode:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private speed:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private time:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        foreign = true
    .end annotation
.end field

.field private x:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private y:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirect()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->direct:Ljava/lang/Float;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMode()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->mode:Ljava/lang/Float;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->speed:Ljava/lang/Float;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method public getX()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->x:Ljava/lang/Float;

    return-object v0
.end method

.method public getY()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->y:Ljava/lang/Float;

    return-object v0
.end method

.method public setDirect(Ljava/lang/Float;)V
    .locals 0
    .param p1, "direct"    # Ljava/lang/Float;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->direct:Ljava/lang/Float;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->id:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setMode(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/Float;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->mode:Ljava/lang/Float;

    .line 86
    return-void
.end method

.method public setSpeed(Ljava/lang/Float;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/Float;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->speed:Ljava/lang/Float;

    .line 70
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->time:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 94
    return-void
.end method

.method public setX(Ljava/lang/Float;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Float;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->x:Ljava/lang/Float;

    .line 54
    return-void
.end method

.method public setY(Ljava/lang/Float;)V
    .locals 0
    .param p1, "y"    # Ljava/lang/Float;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/entity/Location1;->y:Ljava/lang/Float;

    .line 62
    return-void
.end method
