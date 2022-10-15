.class final Lcom/meizu/smart/wristband/servers/DBSportApi$1;
.super Ljava/lang/Object;
.source "DBSportApi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/DBSportApi;->getBestSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
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
        "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)I
    .locals 2
    .param p1, "sportStat"    # Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .param p2, "t1"    # Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .prologue
    .line 180
    iget v0, p2, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 177
    check-cast p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    check-cast p2, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/DBSportApi$1;->compare(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)I

    move-result v0

    return v0
.end method
