.class final Lcom/meizu/smart/wristband/servers/DBSleepApi$1;
.super Ljava/lang/Object;
.source "DBSleepApi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/DBSleepApi;->getMainSleep(Landroid/content/Context;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/smart/wristband/models/database/entity/Sleep;Lcom/meizu/smart/wristband/models/database/entity/Sleep;)I
    .locals 2
    .param p1, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .param p2, "t1"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    check-cast p2, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/DBSleepApi$1;->compare(Lcom/meizu/smart/wristband/models/database/entity/Sleep;Lcom/meizu/smart/wristband/models/database/entity/Sleep;)I

    move-result v0

    return v0
.end method
