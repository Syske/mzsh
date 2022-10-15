.class public Lcom/meizu/smart/wristband/ota/nodic/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/NotificationActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "startAppIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    .end local v0    # "startAppIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/NotificationActivity;->finish()V

    .line 48
    return-void
.end method
