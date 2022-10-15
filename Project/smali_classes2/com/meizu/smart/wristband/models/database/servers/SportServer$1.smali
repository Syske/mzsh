.class Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;
.super Ljava/lang/Object;
.source "SportServer.java"

# interfaces
.implements Lcom/j256/ormlite/dao/RawRowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getStatSportListByHour(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/RawRowMapper",
        "<",
        "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

.field final synthetic val$user:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;->this$0:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .locals 2
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "resultColumns"    # [Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-static {v1, p2}, Lcom/meizu/smart/wristband/models/database/StatConvert;->parseStatData3(Lcom/meizu/smart/wristband/models/database/entity/User;[Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-result-object v0

    return-object v0
.end method
