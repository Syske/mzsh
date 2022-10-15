.class public Lcom/mob/logcollector/a/c;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/mob/logcollector/a/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/logcollector/a/c;->a:Landroid/content/Context;

    const-string v0, "mob_sdk_exception_1"

    iget-object v1, p0, Lcom/mob/logcollector/a/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/logcollector/a/c;
    .locals 2

    sget-object v0, Lcom/mob/logcollector/a/c;->c:Lcom/mob/logcollector/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/logcollector/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/logcollector/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/logcollector/a/c;->c:Lcom/mob/logcollector/a/c;

    :cond_0
    sget-object v0, Lcom/mob/logcollector/a/c;->c:Lcom/mob/logcollector/a/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    const-string v0, "service_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    const-string v0, "service_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "err_log_filter"

    invoke-virtual {p0, v0, p1}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "is_upload_err_log"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    const-string v0, "is_upload_crash"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "is_upload_err_log"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 2

    const-string v0, "is_upload_sdkerr"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "is_upload_crash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    const-string v0, "is_upload_apperr"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/logcollector/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "is_upload_sdkerr"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lcom/mob/logcollector/a/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "is_upload_apperr"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    const-string v0, "err_log_filter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mob/logcollector/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
