.class Lcom/mob/commons/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/commons/g;


# direct methods
.method constructor <init>(Lcom/mob/commons/g;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/h;->b:Lcom/mob/commons/g;

    iput-object p2, p0, Lcom/mob/commons/h;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "time"

    iget-object v2, p0, Lcom/mob/commons/h;->b:Lcom/mob/commons/g;

    invoke-static {v2}, Lcom/mob/commons/g;->a(Lcom/mob/commons/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    iget-object v2, p0, Lcom/mob/commons/h;->b:Lcom/mob/commons/g;

    invoke-static {v2}, Lcom/mob/commons/g;->b(Lcom/mob/commons/g;)Lcom/mob/tools/utils/Hashon;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/h;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/commons/h;->b:Lcom/mob/commons/g;

    invoke-static {v1}, Lcom/mob/commons/g;->c(Lcom/mob/commons/g;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
